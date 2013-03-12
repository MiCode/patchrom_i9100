.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManager$UsbHostHandler;
    }
.end annotation


# static fields
.field private static final CABLE_UPDATE_STATE:I = 0x0

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_DELAY:I = 0xbb8

.field private static final USBDEVICE_UPDATE_STATE:I = 0x1

.field private static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static final mStringConverter:Lcom/android/server/usb/UsbStringTable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUEventHostDeviceObserver:Landroid/os/UEventObserver;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUsbKeyboardDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbMouseDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbObserverNotification:Landroid/app/Notification;

.field private nNotiCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/server/usb/UsbStringTable;

    invoke-direct {v0}, Lcom/android/server/usb/UsbStringTable;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 3
    .parameter "context"
    .parameter "settingsManager"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 86
    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    .line 361
    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    .line 437
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    .line 439
    new-instance v1, Lcom/android/server/usb/UsbHostManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$2;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 524
    new-instance v1, Lcom/android/server/usb/UsbHostManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$3;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    .line 101
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 106
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbHostNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;-><init>(Lcom/android/server/usb/UsbHostManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    .line 113
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVTYPE=usb_interface"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbHostManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/usb/UsbHostManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbHostManager$UsbHostHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private attachedUsbHostDock(Ljava/lang/String;III)V
    .locals 11
    .parameter "deviceName"
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    .line 672
    const/4 v7, 0x3

    if-ne p2, v7, :cond_2

    const/4 v7, 0x1

    if-ne p3, v7, :cond_2

    const/4 v7, 0x1

    if-ne p4, v7, :cond_2

    .line 675
    new-instance v4, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 676
    .local v4, keyboardfunctions:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    monitor-enter v8

    .line 677
    :try_start_0
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/Boolean;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v7, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 679
    .local v3, keyboard:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 680
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 682
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 683
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 685
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v2, kbdIntent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 689
    const-string v7, "android.intent.extra.device_name"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v7, "android.intent.extra.device_state"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    const-string v7, "android.intent.extra.device_counter"

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v7, "android.intent.extra.device_functions"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 694
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send keyboard intent (attached) : DEVICE_NAME = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_COUNTER = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v2           #kbdIntent:Landroid/content/Intent;
    .end local v3           #keyboard:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v4           #keyboardfunctions:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x3

    if-ne p2, v7, :cond_5

    const/4 v7, 0x1

    if-ne p3, v7, :cond_5

    const/4 v7, 0x2

    if-ne p4, v7, :cond_5

    .line 703
    new-instance v6, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 704
    .local v6, mousefunctions:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    monitor-enter v8

    .line 705
    :try_start_1
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/Boolean;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v7, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 707
    .local v5, mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 708
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 710
    .restart local v1       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 711
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_1

    .line 685
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5           #mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v6           #mousefunctions:Ljava/lang/String;
    .restart local v4       #keyboardfunctions:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 713
    .end local v4           #keyboardfunctions:Ljava/lang/String;
    .restart local v5       #mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .restart local v6       #mousefunctions:Ljava/lang/String;
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, MouseIntent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 717
    const-string v7, "android.intent.extra.device_name"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string v7, "android.intent.extra.device_state"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    const-string v7, "android.intent.extra.device_counter"

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    const-string v7, "android.intent.extra.device_functions"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 723
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send mouse intent (attached) : DEVICE_NAME = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_COUNTER = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v0           #MouseIntent:Landroid/content/Intent;
    .end local v5           #mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v6           #mousefunctions:Ljava/lang/String;
    :cond_5
    return-void

    .line 713
    .restart local v6       #mousefunctions:Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method

.method private detachedUsbHostDock(Ljava/lang/String;)V
    .locals 12
    .parameter "deviceName"

    .prologue
    const/high16 v11, 0x2000

    const/4 v10, 0x0

    .line 732
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 733
    new-instance v4, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 734
    .local v4, keyboardfunctions:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    monitor-enter v8

    .line 735
    :try_start_0
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 737
    .local v3, keyboard:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 738
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 740
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 743
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v2, kbdIntent:Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    const-string v7, "android.intent.extra.device_name"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v7, "android.intent.extra.device_state"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    const-string v7, "android.intent.extra.device_counter"

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    const-string v7, "android.intent.extra.device_functions"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 752
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send keyboard intent (dettached) : DEVICE_NAME = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_COUNTER = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .end local v2           #kbdIntent:Landroid/content/Intent;
    .end local v3           #keyboard:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v4           #keyboardfunctions:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 762
    new-instance v6, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 763
    .local v6, mousefunctions:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    monitor-enter v8

    .line 764
    :try_start_1
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 766
    .local v5, mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 767
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 769
    .restart local v1       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 770
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_1

    .line 743
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5           #mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v6           #mousefunctions:Ljava/lang/String;
    .restart local v4       #keyboardfunctions:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 772
    .end local v4           #keyboardfunctions:Ljava/lang/String;
    .restart local v5       #mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .restart local v6       #mousefunctions:Ljava/lang/String;
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, MouseIntent:Landroid/content/Intent;
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 776
    const-string v7, "android.intent.extra.device_name"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string v7, "android.intent.extra.device_state"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    const-string v7, "android.intent.extra.device_counter"

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const-string v7, "android.intent.extra.device_functions"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 782
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send mouse intent (dettached) : DEVICE_NAME = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_COUNTER = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v0           #MouseIntent:Landroid/content/Intent;
    .end local v5           #mouse:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v6           #mousefunctions:Ljava/lang/String;
    :cond_5
    return-void

    .line 772
    .restart local v6       #mousefunctions:Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method

.method private isBlackListed(II)Z
    .locals 7
    .parameter "vendorID"
    .parameter "productID"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v5

    .line 332
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 334
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, tok:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_1

    :cond_0
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, p2, :cond_2

    .line 343
    .end local v2           #tok:[Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 340
    :catch_0
    move-exception v5

    .line 332
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    .line 343
    goto :goto_1
.end method

.method private isBlackListed(III)Z
    .locals 2
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    const/4 v0, 0x1

    .line 131
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-eq p2, v0, :cond_0

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 120
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 125
    :goto_1
    return v2

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "device"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbObserverNotification :: titleId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", messageId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", icon = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", visible = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dismissable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-nez p4, :cond_1

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 432
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 375
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-eqz v4, :cond_0

    .line 379
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    if-eqz v7, :cond_2

    if-eqz p4, :cond_2

    .line 385
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 386
    .local v3, notificationId:I
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 393
    .end local v3           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 394
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 395
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 396
    .local v6, title:Ljava/lang/CharSequence;
    if-nez p2, :cond_6

    .line 397
    const/4 v2, 0x0

    .line 402
    .local v2, message:Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    .line 403
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    .line 404
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 407
    :cond_3
    if-eqz p5, :cond_7

    .line 408
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 413
    :goto_2
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 414
    if-nez p6, :cond_4

    .line 415
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 419
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iput p3, v7, Landroid/app/Notification;->icon:I

    .line 420
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v7, v8, v6, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 424
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 425
    .restart local v3       #notificationId:I
    if-eqz p4, :cond_8

    .line 426
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbObserverNotification : notify id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 365
    .end local v3           #notificationId:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 399
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #r:Landroid/content/res/Resources;
    .restart local v6       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/CharSequence;
    goto :goto_1

    .line 410
    :cond_7
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 429
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    .restart local v3       #notificationId:I
    :cond_8
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private turnOnLcd()V
    .locals 6

    .prologue
    .line 351
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "turnOnLcd :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivityWithForce() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .locals 32
    .parameter "deviceName"
    .parameter "vendorID"
    .parameter "productID"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "interfaceValues"
    .parameter "endpointValues"

    .prologue
    .line 152
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "usbDeviceAdded : device :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] (%s)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "%s is put on a blocklist [%04xh:%04xh:%02xh:%02xh:%02xh]"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 163
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 164
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v31

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v4

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 168
    :cond_2
    :try_start_1
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v30, v4, 0x5

    .line 169
    .local v30, numInterfaces:I
    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .local v17, interfaces:[Landroid/os/Parcelable;
    const/16 v26, 0x0

    .local v26, ival:I
    const/16 v22, 0x0

    .line 173
    .local v22, eval:I
    const/16 v25, 0x0

    .local v25, intf:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .local v27, ival:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 174
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_2
    aget v5, p7, v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    .local v5, interfaceId:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_3
    aget v6, p7, v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    .local v6, interfaceClass:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_4
    aget v7, p7, v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    .local v7, interfaceSubclass:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_5
    aget v8, p7, v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 178
    .local v8, interfaceProtocol:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_6
    aget v29, p7, v27

    .line 180
    .local v29, numEndpoints:I
    move/from16 v0, v29

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 181
    .local v9, endpoints:[Landroid/os/Parcelable;
    const/16 v21, 0x0

    .local v21, endp:I
    move/from16 v23, v22

    .end local v22           #eval:I
    .local v23, eval:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 182
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    aget v18, p8, v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 183
    .local v18, address:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_7
    aget v19, p8, v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 184
    .local v19, attributes:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    :try_start_8
    aget v28, p8, v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 185
    .local v28, maxPacketSize:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_9
    aget v24, p8, v22

    .line 186
    .local v24, interval:I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v21

    .line 181
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 190
    .end local v18           #address:I
    .end local v19           #attributes:I
    .end local v24           #interval:I
    .end local v28           #maxPacketSize:I
    :cond_3
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "usbDeviceAdded : interface :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] (%s)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v14, v6, v7, v8}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->attachedUsbHostDock(Ljava/lang/String;III)V

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    :try_start_a
    monitor-exit v31
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 200
    :cond_4
    :try_start_b
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 173
    add-int/lit8 v25, v25, 0x1

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .restart local v27       #ival:I
    goto/16 :goto_1

    .line 203
    .end local v5           #interfaceId:I
    .end local v6           #interfaceClass:I
    .end local v7           #interfaceSubclass:I
    .end local v8           #interfaceProtocol:I
    .end local v9           #endpoints:[Landroid/os/Parcelable;
    .end local v21           #endp:I
    .end local v27           #ival:I
    .end local v29           #numEndpoints:I
    .restart local v26       #ival:I
    :catch_0
    move-exception v20

    .line 206
    .local v20, e:Ljava/lang/Exception;
    :goto_3
    :try_start_c
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    monitor-exit v31

    goto/16 :goto_0

    .line 210
    .end local v20           #e:Ljava/lang/Exception;
    .end local v26           #ival:I
    .restart local v27       #ival:I
    :cond_5
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 212
    .local v10, device:Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 214
    monitor-exit v31
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 203
    .end local v10           #device:Landroid/hardware/usb/UsbDevice;
    .restart local v5       #interfaceId:I
    :catch_1
    move-exception v20

    move/from16 v26, v27

    .end local v27           #ival:I
    .restart local v26       #ival:I
    goto :goto_3

    .end local v22           #eval:I
    .restart local v6       #interfaceClass:I
    .restart local v7       #interfaceSubclass:I
    .restart local v8       #interfaceProtocol:I
    .restart local v9       #endpoints:[Landroid/os/Parcelable;
    .restart local v21       #endp:I
    .restart local v23       #eval:I
    .restart local v29       #numEndpoints:I
    :catch_2
    move-exception v20

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    goto :goto_3
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceName"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbDeviceRemoved :: deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->detachedUsbHostDock(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 224
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 227
    :cond_0
    monitor-exit v2

    .line 228
    return-void

    .line 227
    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public RemoveCableNotification()V
    .locals 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 791
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update RemoveCableNotification :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    return-void
.end method

.method public RemoveUsbDeviceNotification()V
    .locals 4

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update RemoveCableNotification :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    return-void
.end method

.method displayNotification(Ljava/lang/String;III)V
    .locals 8
    .parameter "action"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x0

    const v3, 0x10806d6

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 571
    const-string v0, "add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 573
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->hasMessages(I)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->removeMessages(I)V

    .line 577
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 578
    const v1, 0x104066f

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 669
    :cond_1
    :goto_0
    return-void

    .line 587
    :cond_2
    if-ne p2, v1, :cond_3

    if-ne p3, v4, :cond_3

    if-ne p4, v4, :cond_3

    .line 590
    const v1, 0x104065f

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_3
    if-ne p2, v1, :cond_4

    if-ne p3, v4, :cond_4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_4

    .line 601
    const v1, 0x1040662

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    .line 610
    const v1, 0x104066c

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_5
    const-string v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    .line 622
    const v1, 0x1040670

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto :goto_0

    .line 633
    :cond_6
    if-ne p2, v1, :cond_7

    if-ne p3, v4, :cond_7

    if-ne p4, v4, :cond_7

    .line 636
    const v1, 0x1040660

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto :goto_0

    .line 645
    :cond_7
    if-ne p2, v1, :cond_8

    if-ne p3, v4, :cond_8

    const/4 v0, 0x2

    if-ne p4, v0, :cond_8

    .line 648
    const v1, 0x1040663

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto/16 :goto_0

    .line 657
    :cond_8
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 658
    const v1, 0x104066d

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 22
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 273
    :try_start_0
    const-string v17, "  USB Host State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 275
    .local v10, name:Ljava/lang/String;
    sget-object v19, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v17

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    .line 279
    .local v14, szdevice:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ::"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 283
    .local v7, iface:Landroid/hardware/usb/UsbInterface;
    sget-object v17, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v19

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v20

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v15

    .line 287
    .local v15, szinterface:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "       "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ::"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 290
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "         "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 281
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 298
    .end local v5           #i:I
    .end local v7           #iface:Landroid/hardware/usb/UsbInterface;
    .end local v8           #j:I
    .end local v10           #name:Ljava/lang/String;
    .end local v14           #szdevice:Ljava/lang/String;
    .end local v15           #szinterface:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v11, Ljava/io/File;

    const-string v17, "/dev/bus/usb/"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v11, root:Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  files : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 302
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, list:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_4

    .line 304
    new-instance v13, Ljava/io/File;

    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-direct {v13, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v13, sub:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 306
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, slist:[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_3
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 308
    new-instance v16, Ljava/io/File;

    aget-object v17, v12, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v16, tmp:Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "      "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 303
    .end local v8           #j:I
    .end local v12           #slist:[Ljava/lang/String;
    .end local v16           #tmp:Ljava/io/File;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 315
    .end local v5           #i:I
    .end local v9           #list:[Ljava/lang/String;
    .end local v11           #root:Ljava/io/File;
    .end local v13           #sub:Ljava/io/File;
    :catch_0
    move-exception v17

    .line 319
    :cond_4
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    const-string v17, "  USB Host black list:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 323
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 324
    .local v4, count:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    if-ge v5, v4, :cond_5

    .line 325
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 319
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v17

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 327
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_5
    monitor-exit v18

    .line 328
    return-void

    .line 327
    .end local v4           #count:I
    .end local v5           #i:I
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v17
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 4
    .parameter "devices"

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 250
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "deviceName"

    .prologue
    .line 255
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ::: openDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 257
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 260
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 261
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_1

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 231
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    :try_start_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 240
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 241
    monitor-exit v2

    .line 242
    return-void

    .line 241
    .end local v0           #runnable:Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
