let mysql = require('mysql'),
    express = require('express'),
    moment = require('moment'),
    crypto = require('crypto'),
    session = require('express-session'),
    cookieParser = require('cookie-parser'),
    ejs = require('ejs'),
    app = express(),
    favicon = require('serve-favicon'),
    path = require('path'),
    bodyParser = require('body-parser'),
    validator = require("email-validator"),
    nodemailer = require("nodemailer"),
    smtpTransport = require('nodemailer-smtp-transport'),
    port = 80;
require('./functions');

//session設定
app.use(session({
    resave: true,
    saveUninitialized: true,
    secret: "ark",
    cookie: { maxAge: 60 * 1000 * 30 }
}));
app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname + '/')));
app.use(favicon('images/favicon.ico'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

//email資料
let transporter = nodemailer.createTransport(smtpTransport({
    service: 'gmail',
    auth: {
        user: 'g110534021@grad.ntue.edu.tw',
        pass: 'rong1234'
    }
}));

let registerMail = {
    from: 'ark@gmail.com',
    to: '',
    subject: 'ark註冊認證信',
    html: '',
}

function resStatus(status) {
    var data = {
        status: status
    }
    return data;
}
//API功能
app.post('/ark/api/:action', function (req, res) {
    var WebAction = req.params.action;
    let content;
    var reqestData = req.body;

    var responseData = { //傳出的資料
        status: false,
        data: null
    }
    switch (WebAction) {
        case 'RegisterAccount':
            var RegisterData = { //註冊
                id: null,
                email: reqestData.email,
                passwd: base64encode(reqestData.passwd),
                last_login_date: moment(Date.now()).format('YYYY-MM-DD HH:mm:ss'),
                last_boat_date: null
            };
            //查詢是否註冊過
            checkUserAccount(RegisterData, () => {
                console.log(`Email:${reqestData.email}已經註冊過`);
                content = JSON.stringify(resStatus(false));
                res.send(content);
            }, () => {
                //新增使用者帳號
                addUserAccount(RegisterData, () => {
                    content = JSON.stringify(resStatus(true));
                    console.log(`Email:${reqestData.email}註冊成功`);
                    res.send(content);
                });
            });
            break;
        case 'UserLogin':
            getUserAccount(reqestData.email, (data) => {
                if (!data.length) {
                    console.log('取得使用者資料失敗');
                    responseData.status = false;
                    res.send(JSON.stringify(responseData));
                } else {
                    console.log('登入中');
                    
                    if (data[0]['passwd'] == base64encode(reqestData.passwd)) {
                        responseData.data = data;
                        responseData.status = true;
                    } else {
                        responseData.status = false;
                    }
                    console.log(JSON.stringify(responseData))
                    res.send(JSON.stringify(responseData));
                }
            });
            break;
        case 'SendBoat':
            console.log(reqestData);
            addNewBoat(reqestData, () => {
                console.log('新增船成功');
                responseData.status = true;
                res.send(JSON.stringify(responseData));

            });
            break;

        case 'GetUserBoat':
            console.log(reqestData);
            getUserBoat(reqestData.id, (data) => {
                if (!data.length) {
                    console.log('取得自己寄出的船失敗');
                    responseData.status = false;
                    res.send(JSON.stringify(responseData));
                } else {
                    console.log('取得自己寄出的船成功');
                    responseData.data = data;
                    responseData.status = true;
                    res.send(JSON.stringify(responseData));
                }
            });
            break;
        case 'GetReplyBoatByUserId':
            console.log(reqestData);
            getReplyBoatByUserId(reqestData.id, (data) => {
                if (!data.length) {
                    console.log('GetReplyBoatByUserId失敗');
                    responseData.status = false;
                    res.send(JSON.stringify(responseData));
                } else {
                    console.log('GetReplyBoatByUserId成功');
                    responseData.data = data;
                    responseData.status = true;
                    console.log(JSON.stringify(responseData));
                    res.send(JSON.stringify(responseData));
                }
            });
            break;
        case 'GetReplyBoatByBoatId':
            console.log(reqestData);
            getReplyBoatByBoatId(reqestData.boatId, (data) => {
                if (!data.length) {
                    console.log('GetReplyBoatByBoatId失敗');
                    responseData.status = false;
                    res.send(JSON.stringify(responseData));
                } else {
                    console.log('GetReplyBoatByBoatId成功');
                    responseData.data = data;
                    responseData.status = true;
                    res.send(JSON.stringify(responseData));
                }
            });
            break;
        case 'GetUserBoatByBoatId':
            console.log(reqestData);
            getUserBoatByBoatId(reqestData.boatId, (data) => {
                if (!data.length) {
                    console.log('GetUserBoatByBoatId失敗');
                    responseData.status = false;
                    res.send(JSON.stringify(responseData));
                } else {
                    console.log('GetUserBoatByBoatId成功');
                    responseData.data = data;
                    responseData.status = true;
                    console.log(JSON.stringify(responseData));
                    res.send(JSON.stringify(responseData));
                }
            });
            break;
        case 'GetAroundBoat':
            console.log(reqestData);
            getAroundBoat(reqestData.boatLatitude, reqestData.boatLongitude, (data) => {
                if (!data.length) {
                    console.log('getAroundBoat失敗');
                    responseData.status = false;
                    res.send(JSON.stringify(responseData));
                } else {
                    console.log('getAroundBoat成功');
                    responseData.data = data;
                    responseData.status = true;
                    res.send(JSON.stringify(responseData));
                }
            });
            break;
        case 'SendReply':
            console.log(reqestData);
            sendReply(reqestData.boatId,
                reqestData.userId,
                reqestData.boatContent,
                reqestData.boatLatitude,
                reqestData.boatLongitude,
                () => {
                    console.log('sendReply成功');
                    responseData.status = true;
                    res.send(JSON.stringify(responseData));
                });
            break;
    }
});

function base64encode(text) {
    return crypto.createHash('md5').update(text).digest('base64');
}
app.listen(port);
console.log(`Server Running on port:${port}`);