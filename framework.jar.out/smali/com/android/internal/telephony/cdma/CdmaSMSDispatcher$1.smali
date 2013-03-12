.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->getResultCode()I

    move-result v7

    .line 1257
    .local v7, rc:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_0

    const/4 v11, 0x1

    if-ne v7, v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    .line 1258
    .local v10, success:Z
    :goto_0
    if-nez v10, :cond_2

    .line 1259
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SCP results error: result code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :goto_1
    return-void

    .line 1257
    .end local v10           #success:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1262
    .restart local v10       #success:Z
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    .line 1263
    .local v6, extras:Landroid/os/Bundle;
    if-nez v6, :cond_3

    .line 1264
    const-string v11, "CDMA"

    const-string v12, "SCP results error: missing extras"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1267
    :cond_3
    const-string/jumbo v11, "sender"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1268
    .local v9, sender:Ljava/lang/String;
    if-nez v9, :cond_4

    .line 1269
    const-string v11, "CDMA"

    const-string v12, "SCP results error: missing sender extra."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1272
    :cond_4
    const-string/jumbo v11, "results"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1274
    .local v8, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    if-nez v8, :cond_5

    .line 1275
    const-string v11, "CDMA"

    const-string v12, "SCP results error: missing results extra."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1279
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1280
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1281
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1282
    iput-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 1283
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 1285
    .local v5, encodedBearerData:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1286
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1288
    .local v3, dos:Ljava/io/DataOutputStream;
    const/16 v11, 0x1006

    :try_start_0
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1289
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1290
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1291
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 1293
    .local v2, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1294
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1295
    iget v11, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1296
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1297
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1298
    iget-object v11, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v3, v11, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1300
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1301
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1302
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1303
    array-length v11, v5

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 1304
    const/4 v11, 0x0

    array-length v12, v5

    invoke-virtual {v3, v5, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1306
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1311
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1312
    .end local v2           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 1307
    :catch_1
    move-exception v4

    .line 1308
    .local v4, e:Ljava/io/IOException;
    :try_start_2
    const-string v11, "CDMA"

    const-string v12, "exception creating SCP results PDU"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1311
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1310
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 1311
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1310
    :goto_2
    throw v11

    .line 1312
    :catch_2
    move-exception v12

    goto :goto_2
.end method
