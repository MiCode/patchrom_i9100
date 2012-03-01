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
    .locals 14

    .prologue
    .line 2246
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2248
    const/4 v9, 0x0

    .line 2252
    .local v9, toneType:I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getPartialWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 2253
    .local v3, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2255
    .local v4, phoneType:I
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2256
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2259
    :cond_0
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_0

    .line 2393
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2261
    :pswitch_0
    const/16 v9, 0x16

    .line 2265
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2266
    const/16 v10, 0x1e

    .line 2278
    .local v10, toneVolume:I
    :goto_0
    const v8, 0x7fffffeb

    .line 2401
    .local v8, toneLengthMillis:I
    :cond_1
    :goto_1
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 2402
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v6, 0x6

    .line 2405
    .local v6, stream:I
    :goto_2
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2406
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v6, 0x6

    .line 2408
    :goto_3
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :goto_4
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    .end local v6           #stream:I
    .local v7, toneGenerator:Landroid/media/ToneGenerator;
    :goto_5
    const/4 v1, 0x1

    .line 2454
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2456
    .local v2, okToPlayTone:Z
    if-eqz v7, :cond_5

    .line 2457
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2458
    .local v5, ringerMode:I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_1c

    .line 2459
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_15

    .line 2460
    if-eqz v5, :cond_3

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3

    .line 2462
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2463
    :cond_2
    const/4 v2, 0x1

    .line 2464
    const/4 v1, 0x0

    .line 2491
    :cond_3
    :goto_6
    monitor-enter p0

    .line 2492
    if-eqz v2, :cond_4

    :try_start_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 2493
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2513
    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2515
    add-int/lit8 v11, v8, 0x14

    int-to-long v11, v11

    :try_start_2
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2520
    :goto_7
    if-eqz v1, :cond_4

    .line 2521
    :try_start_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2525
    :cond_4
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    .line 2526
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2527
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2530
    .end local v5           #ringerMode:I
    :cond_5
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2531
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2547
    :cond_6
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_7

    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v12, 0xd

    if-eq v11, v12, :cond_7

    .line 2548
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2549
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2551
    :cond_7
    return-void

    .line 2268
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v7           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_8
    const/16 v10, 0x50

    .restart local v10       #toneVolume:I
    goto/16 :goto_0

    .line 2283
    .end local v10           #toneVolume:I
    :pswitch_1
    const/4 v11, 0x2

    if-ne v4, v11, :cond_9

    .line 2284
    const/16 v9, 0x60

    .line 2285
    const/16 v10, 0x32

    .line 2286
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2287
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_9
    const/4 v11, 0x1

    if-eq v4, v11, :cond_a

    const/4 v11, 0x3

    if-ne v4, v11, :cond_b

    .line 2289
    :cond_a
    const/16 v9, 0x11

    .line 2290
    const/16 v10, 0x50

    .line 2291
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1194

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2295
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_b
    const/4 v11, 0x5

    if-ne v4, v11, :cond_c

    .line 2296
    const/16 v9, 0x60

    .line 2297
    const/16 v10, 0x32

    .line 2298
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2300
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_c
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2304
    :pswitch_2
    const/16 v9, 0x12

    .line 2305
    const/16 v10, 0x50

    .line 2306
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2307
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2313
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_3
    const/16 v9, 0x19

    .line 2314
    const/16 v10, 0x50

    .line 2315
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2316
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2318
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_4
    const/16 v9, 0x1b

    .line 2319
    const/16 v10, 0x50

    .line 2320
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 2321
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2323
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 2325
    const/16 v9, 0x5d

    .line 2326
    const/16 v10, 0x50

    .line 2327
    .restart local v10       #toneVolume:I
    const/16 v8, 0x2ee

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2329
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_d
    const/16 v9, 0x1b

    .line 2330
    const/16 v10, 0x50

    .line 2331
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 2333
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2335
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_6
    const/16 v9, 0x56

    .line 2336
    const/16 v10, 0x50

    .line 2337
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2338
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2340
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_7
    const/16 v9, 0x26

    .line 2341
    const/16 v10, 0x50

    .line 2342
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2343
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2345
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_8
    const/16 v9, 0x25

    .line 2346
    const/16 v10, 0x32

    .line 2347
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1f4

    .line 2348
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2351
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_9
    const/16 v9, 0x5f

    .line 2352
    const/16 v10, 0x32

    .line 2353
    .restart local v10       #toneVolume:I
    const/16 v8, 0x177

    .line 2354
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2356
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_a
    const/16 v9, 0x57

    .line 2357
    const/16 v10, 0x32

    .line 2358
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2359
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2361
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_b
    const-string v11, "limited_service_state_for_kt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2362
    const/16 v9, 0x23

    .line 2366
    :goto_8
    const/16 v10, 0x50

    .line 2368
    .restart local v10       #toneVolume:I
    const v8, 0x7fffffeb

    .line 2369
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2364
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_e
    const/16 v9, 0x17

    goto :goto_8

    .line 2371
    :pswitch_c
    const/16 v9, 0x15

    .line 2372
    const/16 v10, 0x50

    .line 2373
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2374
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2376
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_d
    const/16 v9, 0x19

    .line 2377
    const/16 v10, 0x32

    .line 2378
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2379
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_1

    .line 2381
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_e
    const/16 v9, 0x63

    .line 2382
    const/16 v10, 0x50

    .line 2383
    .restart local v10       #toneVolume:I
    const/16 v8, 0x258

    .line 2384
    .restart local v8       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "play tone - SKT waiting call"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2387
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_f
    const/16 v9, 0x64

    .line 2388
    const/16 v10, 0x32

    .line 2389
    .restart local v10       #toneVolume:I
    const/16 v8, 0x154

    .line 2390
    .restart local v8       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "play tone - SKT waiting call end"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2402
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2406
    .restart local v6       #stream:I
    :cond_10
    const/16 v6, 0xb

    goto/16 :goto_3

    .line 2411
    :cond_11
    :try_start_4
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v6, 0x6

    :goto_9
    goto/16 :goto_4

    :cond_12
    const/4 v6, 0x0

    goto :goto_9

    .line 2420
    .end local v6           #stream:I
    :cond_13
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2421
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/16 v6, 0xb

    .restart local v6       #stream:I
    goto/16 :goto_4

    .line 2425
    .end local v6           #stream:I
    :cond_14
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2427
    const/4 v6, 0x0

    .restart local v6       #stream:I
    goto/16 :goto_4

    .line 2433
    .end local v6           #stream:I
    :catch_0
    move-exception v0

    .line 2434
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    const/4 v7, 0x0

    .restart local v7       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_5

    .line 2466
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v5       #ringerMode:I
    :cond_15
    const/16 v11, 0x60

    if-eq v9, v11, :cond_16

    const/16 v11, 0x26

    if-eq v9, v11, :cond_16

    const/16 v11, 0x27

    if-eq v9, v11, :cond_16

    const/16 v11, 0x25

    if-eq v9, v11, :cond_16

    const/16 v11, 0x5f

    if-ne v9, v11, :cond_18

    .line 2471
    :cond_16
    if-eqz v5, :cond_3

    .line 2472
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2473
    :cond_17
    const/4 v2, 0x1

    .line 2474
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2476
    :cond_18
    const/16 v11, 0x57

    if-eq v9, v11, :cond_19

    const/16 v11, 0x56

    if-ne v9, v11, :cond_1b

    .line 2478
    :cond_19
    if-eqz v5, :cond_3

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3

    .line 2480
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2481
    :cond_1a
    const/4 v2, 0x1

    .line 2482
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2485
    :cond_1b
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2488
    :cond_1c
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2516
    :catch_1
    move-exception v0

    .line 2517
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2527
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    .line 2259
    nop

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
    .line 2554
    monitor-enter p0

    .line 2555
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2556
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2558
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2559
    monitor-exit p0

    .line 2560
    return-void

    .line 2559
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
