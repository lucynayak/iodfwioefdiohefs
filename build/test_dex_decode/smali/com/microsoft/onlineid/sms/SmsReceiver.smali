.class public Lcom/microsoft/onlineid/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final OneTimeCodePattern:Ljava/util/regex/Pattern;

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private final _javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*(\\d+).+\\Qhttp://aka.ms/smscode\\E"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/sms/SmsReceiver;->OneTimeCodePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "javaScriptBridge"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sms/SmsReceiver;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    return-void
.end method

.method public static parseOneTimeCodeFromBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/onlineid/sms/SmsReceiver;->OneTimeCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abortBroadcastWrapper()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "pdus"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    check-cast p1, [B

    invoke-static {p1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/sms/SmsReceiver;->parseOneTimeCodeFromBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object p2

    const-string v0, "SMS verification"

    const-string v1, "Successfully verified"

    invoke-interface {p2, v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    iget-object p2, p0, Lcom/microsoft/onlineid/sms/SmsReceiver;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->Property(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sms/SmsReceiver;->abortBroadcastWrapper()V

    :cond_1
    :goto_0
    return-void
.end method
