.class final Lcom/android/internal/telephony/ims/IMSSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "IMSSMSDispatcher.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 48
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "userData"

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public clearDuplicatedCbMessages()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "sms"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 0
    .parameter "smsc_hexstring"

    .prologue
    .line 233
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public getCbConfig()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x5

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "sms"

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 192
    return-void
.end method

.method protected sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 262
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 302
    return-void
.end method

.method protected sendNewSubmitPduWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZIII)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 297
    return-void
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 126
    if-nez p2, :cond_0

    .line 127
    sget-object p2, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 129
    :cond_0
    const/4 v6, 0x1

    .line 130
    .local v6, curIndex:I
    const/4 v7, 0x1

    .line 132
    .local v7, totalCnt:I
    invoke-static {p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 141
    .local v8, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    iget-object v1, v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 142
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 175
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 214
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 220
    return-void
.end method

.method protected sendTextNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "msgCount"
    .parameter "msgTotal"

    .prologue
    .line 76
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 283
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"

    .prologue
    .line 291
    return-void
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "destAddr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 160
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    return-void
.end method

.method public setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 0
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    .line 305
    return-void
.end method
