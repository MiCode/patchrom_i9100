.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDeleteIntent:Landroid/content/Intent;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    .line 48
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private addConnectionNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0b0110

    const v7, 0x1080080

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 165
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0111

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 170
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 172
    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 173
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 175
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "CON"

    invoke-virtual {v2, v3, v7, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 176
    return-void

    .line 165
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addMapNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0b0116

    const v8, 0x1080080

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 201
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0111

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v7, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 206
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 208
    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 209
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v7, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 211
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "MAP"

    invoke-virtual {v2, v3, v8, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 212
    return-void

    .line 201
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addPbapNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0b0113

    const v7, 0x1080080

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 179
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 183
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0111

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 188
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 190
    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 191
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "PBAP"

    invoke-virtual {v2, v3, v7, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 194
    return-void

    .line 183
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkUserChoice()Z
    .locals 11

    .prologue
    .line 220
    const/4 v6, 0x0

    .line 229
    .local v6, processed:Z
    iget v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    move v7, v6

    .line 303
    .end local v6           #processed:Z
    .local v7, processed:I
    :goto_0
    return v7

    .line 234
    .end local v7           #processed:I
    .restart local v6       #processed:Z
    :cond_0
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 235
    .local v0, bluetoothManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 237
    .local v2, cachedDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 239
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 264
    :cond_1
    const-string v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkUserChoice mRequestType ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 266
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    .line 268
    .local v5, phonebookPermission:I
    if-nez v5, :cond_2

    move v7, v6

    .line 269
    .restart local v7       #processed:I
    goto :goto_0

    .line 272
    .end local v7           #processed:I
    :cond_2
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 273
    .local v3, intentName:Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 274
    const/4 v8, 0x1

    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x1

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 275
    const/4 v6, 0x1

    .end local v3           #intentName:Ljava/lang/String;
    .end local v5           #phonebookPermission:I
    :cond_3
    :goto_1
    move v7, v6

    .line 303
    .restart local v7       #processed:I
    goto :goto_0

    .line 276
    .end local v7           #processed:I
    .restart local v3       #intentName:Ljava/lang/String;
    .restart local v5       #phonebookPermission:I
    :cond_4
    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    .line 277
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 280
    const/4 v6, 0x1

    goto :goto_1

    .line 282
    :cond_5
    const-string v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad phonebookPermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    .end local v3           #intentName:Ljava/lang/String;
    .end local v5           #phonebookPermission:I
    :cond_6
    iget v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 285
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getMapPermissionChoice()I

    move-result v4

    .line 286
    .local v4, mapPermission:I
    if-nez v4, :cond_7

    move v7, v6

    .line 287
    .restart local v7       #processed:I
    goto/16 :goto_0

    .line 290
    .end local v7           #processed:I
    :cond_7
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 291
    .restart local v3       #intentName:Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_8

    .line 292
    const/4 v8, 0x1

    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x1

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 293
    const/4 v6, 0x1

    goto :goto_1

    .line 294
    :cond_8
    const/4 v8, 0x2

    if-ne v4, v8, :cond_9

    .line 295
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 298
    const/4 v6, 0x1

    goto :goto_1

    .line 300
    :cond_9
    const-string v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad mapPermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    if-eqz p3, :cond_1

    .line 319
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 323
    return-void

    .line 314
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const v3, 0x1080080

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 52
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v0, "BluetoothPermissionRequest"

    const-string v2, "onReceive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 60
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 62
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 63
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 65
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-class v0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 83
    :goto_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 86
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 119
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    .line 127
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v0, v4, :cond_4

    .line 128
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->addConnectionNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_4
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v0, v5, :cond_5

    .line 130
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->addPbapNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_5
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v0, v6, :cond_6

    .line 132
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->addMapNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_6
    const-string v0, "BluetoothPermissionRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_7
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 146
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 148
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v1, v4, :cond_8

    .line 149
    const-string v1, "CON"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 150
    :cond_8
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v1, v5, :cond_9

    .line 151
    const-string v1, "PBAP"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 152
    :cond_9
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v1, v6, :cond_a

    .line 153
    const-string v1, "MAP"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 155
    :cond_a
    const-string v0, "BluetoothPermissionRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
