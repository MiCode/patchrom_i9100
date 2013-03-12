.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 188
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 190
    :pswitch_0
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dock state changed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mSmartDockState: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/DockObserver;->mSmartDockState:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 195
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v16, "device_provisioned"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 198
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Device not provisioned, skipping dock broadcast"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit p0

    goto/16 :goto_0

    .line 291
    .end local v4           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 203
    .restart local v4       #cr:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    const-string v16, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v6, intent:Landroid/content/Intent;
    const/high16 v16, 0x2000

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const-string v16, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v16, "android.intent.extra.SMART_DOCK_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/DockObserver;->mSmartDockState:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, address:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 211
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    :cond_1
    const-string v16, "dock_sounds_enabled"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 219
    const/4 v15, 0x0

    .line 220
    .local v15, whichSound:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    if-nez v16, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 225
    :cond_2
    const-string v15, "desk_undock_sound"

    .line 241
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "audio"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 242
    .local v3, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    .line 244
    .local v10, ringerMode:I
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "whichSound is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v15, :cond_4

    .line 246
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 248
    new-instance v14, Landroid/os/SystemVibrator;

    invoke-direct {v14}, Landroid/os/SystemVibrator;-><init>()V

    .line 249
    .local v14, vibrator:Landroid/os/Vibrator;
    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 289
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v10           #ringerMode:I
    .end local v14           #vibrator:Landroid/os/Vibrator;
    .end local v15           #whichSound:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Broadcast dock intent"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 291
    monitor-exit p0

    goto/16 :goto_0

    .line 226
    .restart local v15       #whichSound:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 227
    const-string v15, "car_undock_sound"

    goto/16 :goto_1

    .line 230
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 234
    :cond_7
    const-string v15, "desk_dock_sound"

    goto/16 :goto_1

    .line 235
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 236
    const-string v15, "car_dock_sound"

    goto/16 :goto_1

    .line 251
    .restart local v3       #audioManager:Landroid/media/AudioManager;
    .restart local v10       #ringerMode:I
    :cond_9
    invoke-static {v4, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 252
    .local v12, soundPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "soundPath is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz v12, :cond_4

    .line 254
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 255
    .local v13, soundUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "soundUri is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v13, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    .line 258
    .local v11, sfx:Landroid/media/Ringtone;
    if-eqz v11, :cond_4

    .line 262
    const-string v16, "audioParam;outDevice"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 264
    .local v7, isHDMI:Z
    if-eqz v9, :cond_a

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 269
    :cond_a
    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 270
    .local v8, masterStreamVolume:I
    int-to-float v0, v8

    move/from16 v16, v0

    const/high16 v17, 0x40e0

    div-float v16, v16, v17

    const v17, 0x3e99999a

    mul-float v5, v16, v17

    .line 272
    .local v5, dockSoundVolume:F
    if-eqz v8, :cond_b

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v10, v0, :cond_e

    .line 273
    :cond_b
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Silent mode or volume is zero"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 266
    .end local v5           #dockSoundVolume:F
    .end local v8           #masterStreamVolume:I
    :cond_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    if-nez v16, :cond_d

    const/4 v7, 0x0

    :goto_4
    goto :goto_3

    :cond_d
    const/4 v7, 0x1

    goto :goto_4

    .line 275
    .restart local v5       #dockSoundVolume:F
    .restart local v8       #masterStreamVolume:I
    :cond_e
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 276
    invoke-virtual {v11, v5, v5}, Landroid/media/Ringtone;->setVolume(FF)V

    .line 277
    if-nez v7, :cond_4

    invoke-virtual {v11}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_2

    .line 286
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v5           #dockSoundVolume:F
    .end local v7           #isHDMI:Z
    .end local v8           #masterStreamVolume:I
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #ringerMode:I
    .end local v11           #sfx:Landroid/media/Ringtone;
    .end local v12           #soundPath:Ljava/lang/String;
    .end local v13           #soundUri:Landroid/net/Uri;
    .end local v15           #whichSound:Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "DOCK_SOUNDS_ENALBED is not"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
