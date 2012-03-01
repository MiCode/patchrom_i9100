.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .parameter "msg"

    .prologue
    .line 218
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 934
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 237
    .local v40, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v40

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 238
    .local v11, argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 245
    .local v9, onCompleted:Landroid/os/Message;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v14, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v24, Ljava/io/DataOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v24, dos:Ljava/io/DataOutputStream;
    const/16 v32, 0x0

    .line 249
    .local v32, len:I
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    if-nez v2, :cond_6

    .line 250
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 251
    const/16 v32, 0x9

    .line 256
    :goto_1
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 257
    add-int/lit8 v32, v32, -0x1

    .line 260
    :cond_1
    const/16 v2, 0x15

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 261
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 262
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 263
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 264
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 265
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 267
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 268
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 270
    :cond_2
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_5

    .line 319
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "APDU-TEST1"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data being sent to RIL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channel id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 327
    if-eqz v24, :cond_0

    .line 329
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 330
    :catch_0
    move-exception v28

    .line 331
    .local v28, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_EXCHANGE_APDU : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 253
    .end local v28           #e:Ljava/io/IOException;
    :cond_4
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0x9

    goto/16 :goto_1

    .line 272
    :cond_5
    :try_start_2
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    .line 273
    .local v13, ba:[B
    const/16 v30, 0x0

    .local v30, i:I
    :goto_3
    array-length v2, v13

    move/from16 v0, v30

    if-ge v0, v2, :cond_3

    .line 274
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v30

    .line 276
    aget-byte v2, v13, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 279
    .end local v13           #ba:[B
    .end local v30           #i:I
    :catch_1
    move-exception v28

    .line 280
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    .end local v28           #e:Ljava/io/IOException;
    :cond_6
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 284
    const/16 v32, 0xd

    .line 289
    :goto_4
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 290
    add-int/lit8 v32, v32, -0x1

    .line 293
    :cond_7
    const/16 v2, 0x15

    :try_start_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 294
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 295
    const/16 v2, 0xb

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 298
    :goto_5
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 299
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 300
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 301
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 302
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 303
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 304
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 305
    :cond_8
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 306
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    .line 309
    .restart local v13       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_6
    array-length v2, v13

    move/from16 v0, v30

    if-ge v0, v2, :cond_3

    .line 310
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v30

    .line 312
    aget-byte v2, v13, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 309
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 286
    .end local v13           #ba:[B
    .end local v30           #i:I
    :cond_9
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0xd

    goto/16 :goto_4

    .line 297
    :cond_a
    const/16 v2, 0xc

    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 315
    :catch_2
    move-exception v28

    .line 316
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 373
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v11           #argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v14           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v24           #dos:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v32           #len:I
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 374
    .local v10, ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 375
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_c

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    .line 377
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v12, v2

    check-cast v12, [B

    .line 378
    .local v12, b:[B
    const/16 v23, 0x0

    .line 380
    .local v23, data:[B
    array-length v2, v12

    const/4 v3, 0x2

    if-le v2, v3, :cond_b

    .line 381
    array-length v2, v12

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 382
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v23

    invoke-static {v12, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    :cond_b
    new-instance v2, Lcom/android/internal/telephony/IccIoResult;

    array-length v3, v12

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, v12

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 389
    .end local v12           #b:[B
    .end local v23           #data:[B
    :goto_7
    monitor-enter v40

    .line 390
    :try_start_5
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 391
    monitor-exit v40

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v40
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 387
    :cond_c
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7

    .line 409
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 410
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    .line 411
    .local v36, openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 412
    .restart local v9       #onCompleted:Landroid/os/Message;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 413
    .local v17, bos_open:Ljava/io/ByteArrayOutputStream;
    new-instance v27, Ljava/io/DataOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 414
    .local v27, dos_open:Ljava/io/DataOutputStream;
    const/16 v34, 0x0

    .line 418
    .local v34, len_open:I
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 419
    const/16 v34, 0x4

    .line 424
    :goto_8
    const/16 v2, 0x15

    :try_start_6
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 425
    const/16 v2, 0x9

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 426
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 427
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v2, :cond_f

    .line 440
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "OPEN CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 444
    if-eqz v27, :cond_0

    .line 446
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 447
    :catch_3
    move-exception v28

    .line 448
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_OPEN_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 421
    .end local v28           #e:Ljava/io/IOException;
    :cond_e
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v34, v2, 0x4

    goto :goto_8

    .line 430
    :cond_f
    :try_start_8
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    .line 431
    .restart local v13       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_a
    array-length v2, v13

    move/from16 v0, v30

    if-ge v0, v2, :cond_d

    .line 432
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v30

    .line 434
    aget-byte v2, v13, v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 431
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 437
    .end local v13           #ba:[B
    .end local v30           #i:I
    :catch_4
    move-exception v28

    .line 438
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in open channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 491
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v17           #bos_open:Ljava/io/ByteArrayOutputStream;
    .end local v27           #dos_open:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v34           #len_open:I
    .end local v36           #openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 492
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 493
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "response came"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 494
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_13

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_13

    .line 496
    const/16 v42, 0x0

    .line 497
    .local v42, temp:I
    const/16 v22, 0x0

    .line 499
    .local v22, count:I
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v23, v2

    check-cast v23, [B

    .line 501
    .restart local v23       #data:[B
    move-object/from16 v0, v23

    array-length v2, v0

    add-int/lit8 v22, v2, -0x1

    :goto_b
    if-ltz v22, :cond_12

    .line 502
    aget-byte v2, v23, v22

    if-gez v2, :cond_11

    .line 503
    aget-byte v2, v23, v22

    add-int/lit16 v2, v2, 0x100

    or-int v42, v42, v2

    .line 508
    :goto_c
    if-lez v22, :cond_10

    .line 509
    shl-int/lit8 v42, v42, 0x8

    .line 501
    :cond_10
    add-int/lit8 v22, v22, -0x1

    goto :goto_b

    .line 505
    :cond_11
    aget-byte v2, v23, v22

    or-int v42, v42, v2

    goto :goto_c

    .line 512
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from sim is data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session Id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 516
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v42

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 521
    .end local v22           #count:I
    .end local v23           #data:[B
    .end local v42           #temp:I
    :goto_d
    monitor-enter v40

    .line 522
    :try_start_9
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 523
    monitor-exit v40

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v40
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    .line 519
    :cond_13
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_d

    .line 540
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 541
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    .line 542
    .local v21, closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    const/16 v2, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 543
    .restart local v9       #onCompleted:Landroid/os/Message;
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 544
    .local v16, bos_close:Ljava/io/ByteArrayOutputStream;
    new-instance v26, Ljava/io/DataOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 545
    .local v26, dos_close:Ljava/io/DataOutputStream;
    const/16 v33, 0x0

    .line 546
    .local v33, len_close:I
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    if-nez v2, :cond_14

    .line 547
    const/16 v33, 0x4

    .line 552
    :goto_e
    const/16 v2, 0x15

    :try_start_a
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 553
    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 554
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 555
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    if-nez v2, :cond_15

    .line 565
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "CLOSE CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 569
    if-eqz v26, :cond_0

    .line 571
    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 572
    :catch_5
    move-exception v28

    .line 573
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_CLOSE_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 549
    .end local v28           #e:Ljava/io/IOException;
    :cond_14
    const/16 v33, 0x8

    goto :goto_e

    .line 558
    :cond_15
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ID received from application is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_f

    .line 562
    :catch_6
    move-exception v28

    .line 563
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in close channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto :goto_f

    .line 607
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v16           #bos_close:Ljava/io/ByteArrayOutputStream;
    .end local v21           #closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    .end local v26           #dos_close:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v33           #len_close:I
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 608
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 609
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    .line 610
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 614
    :goto_10
    monitor-enter v40

    .line 615
    :try_start_d
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 616
    monitor-exit v40

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v40
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v2

    .line 612
    :cond_16
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_10

    .line 621
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 622
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;

    .line 623
    .local v37, parameters:Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;
    const/16 v2, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 624
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->fileId:I

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->command:I

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p1:I

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p2:I

    move-object/from16 v0, v37

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p3:I

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->filePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/IccCard;->transmitIccIo(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 630
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v37           #parameters:Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 631
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 633
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_17

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_17

    .line 634
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 639
    :goto_11
    monitor-enter v40

    .line 640
    :try_start_e
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 641
    monitor-exit v40

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v40
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v2

    .line 636
    :cond_17
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 645
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 646
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 649
    monitor-enter v40

    .line 650
    :try_start_f
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 651
    monitor-exit v40

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v40
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v2

    .line 655
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 656
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 658
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 662
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 663
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 664
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_18

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_18

    .line 665
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 671
    :goto_12
    monitor-enter v40

    .line 672
    :try_start_10
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 673
    monitor-exit v40

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v40
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v2

    .line 668
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_12

    .line 677
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 681
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 685
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 686
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v29, 0x0

    .line 687
    .local v29, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v39

    .line 688
    .local v39, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v39

    if-ne v0, v2, :cond_1a

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    .line 699
    :goto_13
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v29, :cond_1c

    const-string v2, "hung up!"

    :goto_14
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 702
    :cond_19
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 704
    monitor-enter v40

    .line 705
    :try_start_11
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 706
    monitor-exit v40

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v40
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v2

    .line 692
    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_1b

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v29

    goto :goto_13

    .line 696
    :cond_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 700
    :cond_1c
    const-string v2, "no call to hang up"

    goto :goto_14

    .line 712
    .end local v29           #hungUp:Z
    .end local v39           #phoneType:I
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 713
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 714
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 715
    .local v20, cfReason:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_GET_CALL_FORWARD cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v20

    invoke-interface {v2, v0, v9}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 720
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v20           #cfReason:I
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 721
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 722
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_20

    .line 723
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v19, v2

    check-cast v19, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 724
    .local v19, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_1d

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_GET_CALL_FORWARD_DONE cfInfoArray.length==0"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 726
    const/4 v2, 0x0

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 746
    .end local v19           #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    :goto_15
    monitor-enter v40

    .line 747
    :try_start_12
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 748
    monitor-exit v40

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v40
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v2

    .line 728
    .restart local v19       #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_1d
    const/16 v30, 0x0

    .restart local v30       #i:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v35, v0

    .local v35, length:I
    :goto_16
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_1e

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_GET_CALL_FORWARD_DONE cfInfoArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v19, v30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 728
    add-int/lit8 v30, v30, 0x1

    goto :goto_16

    .line 732
    :cond_1e
    const/4 v2, 0x0

    aget-object v2, v19, v2

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 733
    const/4 v2, 0x0

    aget-object v2, v19, v2

    iget-object v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_15

    .line 735
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: CONFIG NOT ACTIVE"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 736
    const-string v2, ""

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_15

    .line 741
    .end local v19           #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v30           #i:I
    .end local v35           #length:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_GET_CALL_FORWARD_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 743
    const-string v2, ""

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto/16 :goto_15

    .line 752
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 753
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 755
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;

    .line 756
    .local v38, params:Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_SET_CALL_FORWARD cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cfAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfAction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dialingNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timerSeconds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->timerSeconds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfAction:I

    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfReason:I

    move-object/from16 v0, v38

    iget-object v7, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->dialingNumber:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->timerSeconds:I

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 767
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v38           #params:Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 768
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 770
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_SET_CALL_FORWARD_DONE worked"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 772
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 779
    :goto_17
    monitor-enter v40

    .line 780
    :try_start_13
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 781
    monitor-exit v40

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v40
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v2

    .line 775
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_SET_CALL_FORWARD_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 776
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_17

    .line 785
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 786
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 787
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 788
    .local v18, cbFacility:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_GET_CALL_BARRING cbFacility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v9}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 793
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v18           #cbFacility:Ljava/lang/String;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 794
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 795
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_23

    .line 796
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v31, v2

    check-cast v31, [I

    .line 797
    .local v31, ints:[I
    const/4 v2, 0x0

    aget v2, v31, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    .line 798
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 809
    .end local v31           #ints:[I
    :goto_18
    monitor-enter v40

    .line 810
    :try_start_14
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 811
    monitor-exit v40

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v40
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v2

    .line 800
    .restart local v31       #ints:[I
    :cond_22
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    .line 804
    .end local v31           #ints:[I
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_GET_CALL_BARRING_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 806
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    .line 815
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 816
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 817
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;

    .line 818
    .local v38, params:Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_SET_CALL_BARRING  cbAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbAction:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cbFlavour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " password="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbAction:Z

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v9}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 823
    monitor-enter v40

    .line 824
    :try_start_15
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 825
    monitor-exit v40

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v40
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw v2

    .line 830
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v38           #params:Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 831
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 833
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_24

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_SET_CALL_BARRING_DONE worked"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 835
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 843
    :goto_19
    monitor-enter v40

    .line 844
    :try_start_16
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 845
    monitor-exit v40

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v40
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    throw v2

    .line 838
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_SET_CALL_BARRING_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 840
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_19

    .line 849
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 850
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 852
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;

    .line 853
    .restart local v38       #params:Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_CHANGE_BARRING_PWD  cbFlavour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldPwd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->oldPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newPwd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->oldPwd:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v7, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 858
    monitor-enter v40

    .line 859
    :try_start_17
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 860
    monitor-exit v40

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v40
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    throw v2

    .line 865
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v38           #params:Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 866
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 868
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_CHANGE_BARRING_PWD_DONE worked"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 870
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 878
    :goto_1a
    monitor-enter v40

    .line 879
    :try_start_18
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 880
    monitor-exit v40

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v40
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    throw v2

    .line 873
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_CHANGE_BARRING_PWD_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 875
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1a

    .line 886
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "GET_ATR-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 888
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 889
    .local v15, bos1:Ljava/io/ByteArrayOutputStream;
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 892
    .local v25, dos1:Ljava/io/DataOutputStream;
    const/16 v2, 0x21

    :try_start_19
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 893
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 894
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7

    .line 899
    :goto_1b
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "Request ATR Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 895
    :catch_7
    move-exception v28

    .line 896
    .restart local v28       #e:Ljava/io/IOException;
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 905
    .end local v15           #bos1:Ljava/io/ByteArrayOutputStream;
    .end local v25           #dos1:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v40           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "EVENT_GET_ATR_INFO_DONE"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 906
    const/16 v23, 0x0

    .line 908
    .restart local v23       #data:[B
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 909
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 911
    .restart local v40       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    .line 912
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v41, v2

    check-cast v41, [B

    .line 914
    .local v41, result:[B
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR Length :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v41, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v2, 0x0

    aget-byte v2, v41, v2

    if-lez v2, :cond_26

    .line 917
    const/4 v2, 0x0

    aget-byte v2, v41, v2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 918
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v41           #result:[B
    :cond_26
    :goto_1c
    move-object/from16 v0, v23

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 928
    monitor-enter v40

    .line 929
    :try_start_1a
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v40

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v40
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    throw v2

    .line 923
    :cond_27
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in EVENT_GET_ATR_INFO_DONE with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_12
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
