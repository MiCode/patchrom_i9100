.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 2238
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2239
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2240
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2241
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2242
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 2246
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2248
    const/4 v10, 0x0

    .line 2252
    .local v10, toneType:I
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getPartialWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 2253
    .local v3, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2255
    .local v4, phoneType:I
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2256
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2259
    :cond_0
    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v12, :pswitch_data_0

    .line 2397
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad toneId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2261
    :pswitch_0
    const/16 v10, 0x16

    .line 2265
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2266
    const/16 v11, 0x1e

    .line 2270
    .local v11, toneVolume:I
    :goto_0
    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2273
    .local v6, salesCode:Ljava/lang/String;
    const-string v12, "PTR"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "CEL"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "PCL"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "MIR"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "ILO"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2274
    :cond_1
    const/16 v9, 0x4268

    .line 2275
    .local v9, toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v13, "- InCallTonePlayer:SIMI tome playes 5 times "

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2405
    .end local v6           #salesCode:Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 2406
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v7, 0x6

    .line 2409
    .local v7, stream:I
    :goto_2
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2410
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v7, 0x6

    .line 2412
    :goto_3
    const-string v12, "CallNotifier"

    const-string v13, "InCallTonePlayer: mBlutoothHandsfree is not null and in Video Call"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :goto_4
    new-instance v8, Landroid/media/ToneGenerator;

    invoke-direct {v8, v7, v11}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2457
    .end local v7           #stream:I
    .local v8, toneGenerator:Landroid/media/ToneGenerator;
    :goto_5
    const/4 v1, 0x1

    .line 2458
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2460
    .local v2, okToPlayTone:Z
    if-eqz v8, :cond_6

    .line 2461
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2462
    .local v5, ringerMode:I
    const/4 v12, 0x2

    if-ne v4, v12, :cond_1e

    .line 2463
    const/16 v12, 0x5d

    if-ne v10, v12, :cond_17

    .line 2464
    if-eqz v5, :cond_4

    const/4 v12, 0x1

    if-eq v5, v12, :cond_4

    .line 2466
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2467
    :cond_3
    const/4 v2, 0x1

    .line 2468
    const/4 v1, 0x0

    .line 2495
    :cond_4
    :goto_6
    monitor-enter p0

    .line 2496
    if-eqz v2, :cond_5

    :try_start_1
    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_5

    .line 2497
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2517
    invoke-virtual {v8, v10}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2519
    add-int/lit8 v12, v9, 0x14

    int-to-long v12, v12

    :try_start_2
    invoke-virtual {p0, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2524
    :goto_7
    if-eqz v1, :cond_5

    .line 2525
    :try_start_3
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2529
    :cond_5
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->release()V

    .line 2530
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2531
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2534
    .end local v5           #ringerMode:I
    :cond_6
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2535
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2551
    :cond_7
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v12, v13, :cond_8

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v13, 0xd

    if-eq v12, v13, :cond_8

    .line 2552
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2553
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v12}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2555
    :cond_8
    return-void

    .line 2268
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v8           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_9
    const/16 v11, 0x50

    .restart local v11       #toneVolume:I
    goto/16 :goto_0

    .line 2282
    .restart local v6       #salesCode:Ljava/lang/String;
    :cond_a
    const v9, 0x7fffffeb

    .line 2285
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2287
    .end local v6           #salesCode:Ljava/lang/String;
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_1
    const/4 v12, 0x2

    if-ne v4, v12, :cond_b

    .line 2288
    const/16 v10, 0x60

    .line 2289
    const/16 v11, 0x32

    .line 2290
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2291
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_b
    const/4 v12, 0x1

    if-eq v4, v12, :cond_c

    const/4 v12, 0x3

    if-ne v4, v12, :cond_d

    .line 2293
    :cond_c
    const/16 v10, 0x11

    .line 2294
    const/16 v11, 0x50

    .line 2295
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1194

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2299
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_d
    const/4 v12, 0x5

    if-ne v4, v12, :cond_e

    .line 2300
    const/16 v10, 0x60

    .line 2301
    const/16 v11, 0x32

    .line 2302
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2304
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_e
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected phone type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2308
    :pswitch_2
    const/16 v10, 0x12

    .line 2309
    const/16 v11, 0x50

    .line 2310
    .restart local v11       #toneVolume:I
    const/16 v9, 0xfa0

    .line 2311
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2317
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_3
    const/16 v10, 0x19

    .line 2318
    const/16 v11, 0x50

    .line 2319
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .line 2320
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2322
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_4
    const/16 v10, 0x1b

    .line 2323
    const/16 v11, 0x50

    .line 2324
    .restart local v11       #toneVolume:I
    const/16 v9, 0xc8

    .line 2325
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2327
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_5
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v12, v12, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 2329
    const/16 v10, 0x5d

    .line 2330
    const/16 v11, 0x50

    .line 2331
    .restart local v11       #toneVolume:I
    const/16 v9, 0x2ee

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2333
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_f
    const/16 v10, 0x1b

    .line 2334
    const/16 v11, 0x50

    .line 2335
    .restart local v11       #toneVolume:I
    const/16 v9, 0xc8

    .line 2337
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2339
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_6
    const/16 v10, 0x56

    .line 2340
    const/16 v11, 0x50

    .line 2341
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1388

    .line 2342
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2344
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_7
    const/16 v10, 0x26

    .line 2345
    const/16 v11, 0x50

    .line 2346
    .restart local v11       #toneVolume:I
    const/16 v9, 0xfa0

    .line 2347
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2349
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_8
    const/16 v10, 0x25

    .line 2350
    const/16 v11, 0x32

    .line 2351
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1f4

    .line 2352
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2355
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_9
    const/16 v10, 0x5f

    .line 2356
    const/16 v11, 0x32

    .line 2357
    .restart local v11       #toneVolume:I
    const/16 v9, 0x177

    .line 2358
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2360
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_a
    const/16 v10, 0x57

    .line 2361
    const/16 v11, 0x32

    .line 2362
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1388

    .line 2363
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2365
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_b
    const-string v12, "limited_service_state_for_kt"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2366
    const/16 v10, 0x23

    .line 2370
    :goto_8
    const/16 v11, 0x50

    .line 2372
    .restart local v11       #toneVolume:I
    const v9, 0x7fffffeb

    .line 2373
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2368
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_10
    const/16 v10, 0x17

    goto :goto_8

    .line 2375
    :pswitch_c
    const/16 v10, 0x15

    .line 2376
    const/16 v11, 0x50

    .line 2377
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1388

    .line 2378
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2380
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_d
    const/16 v10, 0x19

    .line 2381
    const/16 v11, 0x32

    .line 2382
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .line 2383
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2385
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_e
    const/16 v10, 0x63

    .line 2386
    const/16 v11, 0x50

    .line 2387
    .restart local v11       #toneVolume:I
    const/16 v9, 0x258

    .line 2388
    .restart local v9       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v13, "play tone - SKT waiting call"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2391
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_f
    const/16 v10, 0x64

    .line 2392
    const/16 v11, 0x32

    .line 2393
    .restart local v11       #toneVolume:I
    const/16 v9, 0x154

    .line 2394
    .restart local v9       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v13, "play tone - SKT waiting call end"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2406
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2410
    .restart local v7       #stream:I
    :cond_12
    const/16 v7, 0xb

    goto/16 :goto_3

    .line 2415
    :cond_13
    :try_start_4
    const-string v12, "CallNotifier"

    const-string v13, "InCallTonePlayer: mBlutoothHandsfree is not null and in voice Call"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v7, 0x6

    :goto_9
    goto/16 :goto_4

    :cond_14
    const/4 v7, 0x0

    goto :goto_9

    .line 2424
    .end local v7           #stream:I
    :cond_15
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 2425
    const-string v12, "CallNotifier"

    const-string v13, "InCallTonePlayer: mBlutoothHandsfree is null and in Video Call"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    const/16 v7, 0xb

    .restart local v7       #stream:I
    goto/16 :goto_4

    .line 2429
    .end local v7           #stream:I
    :cond_16
    const-string v12, "CallNotifier"

    const-string v13, "InCallTonePlayer: mBlutoothHandsfree is null and in Voice Call"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2431
    const/4 v7, 0x0

    .restart local v7       #stream:I
    goto/16 :goto_4

    .line 2437
    .end local v7           #stream:I
    :catch_0
    move-exception v0

    .line 2438
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v12, "CallNotifier"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const/4 v8, 0x0

    .restart local v8       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_5

    .line 2470
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v5       #ringerMode:I
    :cond_17
    const/16 v12, 0x60

    if-eq v10, v12, :cond_18

    const/16 v12, 0x26

    if-eq v10, v12, :cond_18

    const/16 v12, 0x27

    if-eq v10, v12, :cond_18

    const/16 v12, 0x25

    if-eq v10, v12, :cond_18

    const/16 v12, 0x5f

    if-ne v10, v12, :cond_1a

    .line 2475
    :cond_18
    if-eqz v5, :cond_4

    .line 2476
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v12

    if-eqz v12, :cond_19

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2477
    :cond_19
    const/4 v2, 0x1

    .line 2478
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2480
    :cond_1a
    const/16 v12, 0x57

    if-eq v10, v12, :cond_1b

    const/16 v12, 0x56

    if-ne v10, v12, :cond_1d

    .line 2482
    :cond_1b
    if-eqz v5, :cond_4

    const/4 v12, 0x1

    if-eq v5, v12, :cond_4

    .line 2484
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2485
    :cond_1c
    const/4 v2, 0x1

    .line 2486
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2489
    :cond_1d
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2492
    :cond_1e
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2520
    :catch_1
    move-exception v0

    .line 2521
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v12, "CallNotifier"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer stopped: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2531
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v12

    .line 2259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2558
    monitor-enter p0

    .line 2559
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2560
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2562
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2563
    monitor-exit p0

    .line 2564
    return-void

    .line 2563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
