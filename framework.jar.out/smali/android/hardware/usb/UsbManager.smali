.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_CABLE_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_CABLE_STATE"

.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "audio_source"

.field public static final USB_FUNCTION_MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 232
    return-void
.end method

.method private static propertyContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "property"
    .parameter "function"

    .prologue
    const/16 v5, 0x2c

    const/4 v3, 0x0

    .line 406
    const-string v4, ""

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, functions:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 408
    .local v2, index:I
    if-gez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v3

    .line 409
    :cond_1
    if-lez v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 410
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 411
    .local v0, charAfter:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 412
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 290
    :try_start_0
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v3}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 291
    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 298
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :goto_0
    return-object v2

    .line 294
    .restart local v0       #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/usb/UsbAccessory;

    const/4 v4, 0x0

    aput-object v0, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 296
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :catch_0
    move-exception v1

    .line 297
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "UsbManager"

    const-string v4, "RemoteException in getAccessoryList"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentFunctions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getCurrentFunctions()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 492
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in getCurrentFunctions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultCurrentFunctions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getDefaultCurrentFunctions()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 504
    :goto_0
    return-object v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in getDefaultCurrentFunctions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    const-string/jumbo v2, "persist.sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, functions:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 437
    .local v0, commaIndex:I
    if-lez v0, :cond_0

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 440
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getDeviceList()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v0}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 246
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v4, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "UsbManager"

    const-string v6, "RemoteException in getDeviceList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v4, 0x0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .parameter "accessory"

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 349
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 331
    :goto_0
    return v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "function"

    .prologue
    .line 424
    const-string/jumbo v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/hardware/usb/UsbManager;->propertyContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "accessory"

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 313
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in openAccessory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 7
    .parameter "device"

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, deviceName:Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v1}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 268
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    .line 269
    new-instance v0, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 270
    .local v0, connection:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 271
    .local v4, result:Z
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    if-eqz v4, :cond_0

    .line 279
    .end local v0           #connection:Landroid/hardware/usb/UsbDeviceConnection;
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #result:Z
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "UsbManager"

    const-string v6, "exception in UsbManager.openDevice"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "accessory"
    .parameter "pi"

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "device"
    .parameter "pi"

    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public restoreCurrentFunctions(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->restoreCurrentFunctions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in restoreCurrentFunctions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public saveCurrentFunctions(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->saveCurrentFunctions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in saveCurrentFunctions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 4
    .parameter "function"
    .parameter "makeDefault"

    .prologue
    .line 454
    const-string v1, "UsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: setCurrentFunction :: function = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", makeDefault = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setCurrentFunction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMassStorageBackingFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setMassStorageBackingFile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setDefaultFunction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
