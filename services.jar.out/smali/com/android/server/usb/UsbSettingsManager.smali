.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbSettingsManager$1;,
        Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbSettingsManager"

.field private static final sSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    .line 369
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    invoke-direct {v0, p0, v2}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$1;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    .line 372
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 374
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->readSettingsLocked()V

    .line 376
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 378
    return-void

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .locals 4
    .parameter "packageName"
    .parameter "filter"

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 712
    .local v2, test:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    .end local v2           #test:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_1
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .locals 4
    .parameter "packageName"
    .parameter "filter"

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 701
    .local v2, test:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    .end local v2           #test:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_1
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, cleared:Z
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 968
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 970
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 971
    .local v3, keys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 972
    aget-object v2, v3, v1

    .line 973
    .local v2, key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 974
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const/4 v0, 0x1

    .line 971
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 981
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 982
    .restart local v3       #keys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 983
    aget-object v2, v3, v1

    .line 984
    .restart local v2       #key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 985
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const/4 v0, 0x1

    .line 982
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 990
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_3
    monitor-exit v5

    return v0

    .line 991
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .parameter "accessory"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 528
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 529
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 530
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 531
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, p1}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .parameter "device"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 513
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 514
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 515
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 516
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, p1, v6}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v2
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    .line 757
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 759
    const/4 v1, 0x0

    .line 762
    .local v1, changed:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x81

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 769
    .local v4, info:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 770
    .local v0, activities:[Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    monitor-exit v6

    .line 787
    .end local v0           #activities:[Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v2

    .line 765
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePackageUpdate could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    monitor-exit v6

    goto :goto_0

    .line 786
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 771
    .restart local v0       #activities:[Landroid/content/pm/ActivityInfo;
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_2
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 773
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 775
    const/4 v1, 0x1

    .line 777
    :cond_1
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 779
    const/4 v1, 0x1

    .line 771
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 783
    :cond_3
    if-eqz v1, :cond_4

    .line 784
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 786
    :cond_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"
    .parameter "aInfo"
    .parameter "metaDataName"

    .prologue
    .line 722
    const/4 v3, 0x0

    .line 723
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 726
    .local v0, changed:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 727
    if-nez v3, :cond_1

    const/4 v5, 0x0

    .line 749
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 751
    :cond_0
    :goto_0
    return v5

    .line 729
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 730
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 731
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 733
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 734
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 735
    const/4 v0, 0x1

    .line 744
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_2
    :goto_2
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 746
    .end local v4           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 747
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    if-eqz v3, :cond_3

    .end local v1           #e:Ljava/lang/Exception;
    :goto_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    move v5, v0

    .line 751
    goto :goto_0

    .line 738
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 740
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 741
    const/4 v0, 0x1

    goto :goto_2

    .line 749
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .end local v4           #tagName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v5

    :cond_6
    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .locals 9
    .parameter "info"
    .parameter "metaDataName"
    .parameter "device"
    .parameter "accessory"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 474
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 476
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 478
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 479
    if-nez v3, :cond_1

    .line 480
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 506
    :cond_0
    :goto_1
    return v5

    .line 484
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 485
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v6, :cond_7

    .line 486
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, tagName:Ljava/lang/String;
    if-eqz p3, :cond_3

    const-string v7, "usb-device"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 488
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 489
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    .line 504
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    move v5, v6

    .line 490
    goto :goto_1

    .line 493
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_3
    if-eqz p4, :cond_5

    :try_start_2
    const-string v7, "usb-accessory"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 494
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 495
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    .line 504
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    move v5, v6

    .line 496
    goto :goto_1

    .line 499
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_5
    :try_start_3
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 501
    .end local v4           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    if-eqz v3, :cond_0

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v5

    :cond_7
    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 384
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 385
    const-string v4, "package"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 390
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 391
    const-string v4, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v1

    .line 393
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 399
    return-void

    .line 384
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_3
    const-string v4, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 395
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v1

    .line 396
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private readSettingsLocked()V
    .locals 7

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 404
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 405
    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 406
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 408
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 409
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 410
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "preference"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 417
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 418
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string v5, "UsbSettingsManager"

    const-string v6, "settings file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    if-eqz v2, :cond_0

    .line 425
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 430
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 414
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 419
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tagName:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 420
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v5, "UsbSettingsManager"

    const-string v6, "error reading settings file, deleting to start fresh"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 423
    if-eqz v2, :cond_0

    .line 425
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 426
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .line 423
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 425
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_4
    move-object v2, v3

    .line 429
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 423
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v2, :cond_4

    .line 425
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 423
    :cond_4
    :goto_6
    throw v5

    .line 426
    :catch_3
    move-exception v6

    goto :goto_6

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_4

    .line 423
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 419
    :catch_5
    move-exception v0

    goto :goto_3

    .line 417
    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "intent"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 826
    .local v4, uid:I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 827
    .local v0, aInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v4, :cond_0

    .line 828
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .end local v0           #aInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 832
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 835
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #aInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 836
    .local v2, identity:J
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const/high16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 839
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 840
    const-string v5, "package"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v5, "uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return-void

    .line 844
    :catch_1
    move-exception v1

    .line 845
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v5, "UsbSettingsManager"

    const-string v6, "unable to start UsbPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 847
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .locals 12
    .parameter "intent"
    .parameter
    .parameter "defaultPackage"
    .parameter "device"
    .parameter "accessory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 594
    .local p2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 596
    .local v1, count:I
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveActivity : matches count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", defaultPackage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-nez v1, :cond_1

    .line 601
    if-eqz p5, :cond_0

    .line 602
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 603
    .local v8, uri:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 606
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 607
    .local v3, dialogIntent:Landroid/content/Intent;
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 611
    const-string v9, "uri"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v3           #dialogIntent:Landroid/content/Intent;
    .end local v8           #uri:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 614
    .restart local v3       #dialogIntent:Landroid/content/Intent;
    .restart local v8       #uri:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 615
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string v10, "unable to start UsbAccessoryUriActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v3           #dialogIntent:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v8           #uri:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 625
    .local v2, defaultRI:Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_2

    if-nez p3, :cond_2

    .line 628
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 629
    .local v6, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    .line 632
    move-object v2, v6

    .line 636
    .end local v6           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    .line 638
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 639
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 640
    .restart local v6       #rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_5

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 642
    move-object v2, v6

    .line 648
    .end local v5           #i:I
    .end local v6           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    if-eqz v2, :cond_7

    .line 649
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveActivity : defaultRI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz p4, :cond_6

    .line 652
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 659
    :cond_4
    :goto_2
    :try_start_1
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 662
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 663
    :catch_1
    move-exception v4

    .line 664
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string v10, "startActivity failed"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 638
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .restart local v5       #i:I
    .restart local v6       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 653
    .end local v5           #i:I
    .end local v6           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    if-eqz p5, :cond_4

    .line 654
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    goto :goto_2

    .line 667
    :cond_7
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v7, resolverIntent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    const/4 v9, 0x1

    if-ne v1, v9, :cond_9

    .line 672
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v10, "rinfo"

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 676
    if-eqz p4, :cond_8

    .line 677
    const-string v9, "device"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    :goto_3
    const-string v9, "UsbSettingsManager"

    const-string v10, "resolveActivity : UsbConfirmActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_4
    :try_start_2
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 692
    :catch_2
    move-exception v4

    .line 693
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 679
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_8
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 684
    :cond_9
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v9, "rlist"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 687
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 688
    const-string v9, "UsbSettingsManager"

    const-string v10, "resolveActivity : UsbResolverActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private writeSettingsLocked()V
    .locals 10

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v7, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 436
    .local v3, fstr:Ljava/io/FileOutputStream;
    const-string v7, "UsbSettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writing settings to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 438
    .local v6, str:Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 439
    .local v5, serializer:Lcom/android/internal/util/FastXmlSerializer;
    const-string v7, "utf-8"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 440
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 442
    const/4 v7, 0x0

    const-string v8, "settings"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 445
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    const/4 v8, 0x0

    const-string v9, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 448
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .end local v3           #fstr:Ljava/io/FileOutputStream;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #serializer:Lcom/android/internal/util/FastXmlSerializer;
    .end local v6           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "UsbSettingsManager"

    const-string v8, "error writing settings file, deleting to start fresh"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    sget-object v7, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 468
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 451
    .restart local v3       #fstr:Ljava/io/FileOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #serializer:Lcom/android/internal/util/FastXmlSerializer;
    .restart local v6       #str:Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 452
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    const/4 v8, 0x0

    const-string v9, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 455
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 458
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_1
    const/4 v7, 0x0

    const-string v8, "settings"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    invoke-virtual {v5}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 461
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 462
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 463
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .locals 6
    .parameter "accessory"

    .prologue
    .line 566
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 568
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 573
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 576
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 577
    .local v3, defaultPackage:Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 580
    return-void

    .line 577
    .end local v2           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #defaultPackage:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .locals 2
    .parameter "accessory"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .parameter "accessory"

    .prologue
    .line 816
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 958
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearPackageDefaultsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 962
    :cond_0
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "device"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 546
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 549
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 550
    .local v3, defaultPackage:Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 553
    return-void

    .line 550
    .end local v2           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #defaultPackage:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 561
    const-string v1, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbDeviceRemoved, sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 563
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 995
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 996
    :try_start_0
    const-string v14, "  Device permissions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 998
    .local v4, deviceName:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseBooleanArray;

    .line 1000
    .local v13, uidList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 1001
    .local v3, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v3, :cond_0

    .line 1002
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1004
    :cond_0
    const-string v14, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1048
    .end local v3           #count:I
    .end local v4           #deviceName:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1006
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v14, "  Accessory permissions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    .line 1008
    .local v1, accessory:Landroid/hardware/usb/UsbAccessory;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseBooleanArray;

    .line 1010
    .restart local v13       #uidList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 1011
    .restart local v3       #count:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v3, :cond_2

    .line 1012
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1014
    :cond_2
    const-string v14, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1016
    .end local v1           #accessory:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #count:I
    .end local v8           #i:I
    .end local v13           #uidList:Landroid/util/SparseBooleanArray;
    :cond_3
    const-string v14, "  Device preferences:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 1018
    .local v7, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1020
    .end local v7           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_4
    const-string v14, "  Accessory preferences:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 1022
    .local v7, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1025
    .end local v7           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_5
    const-string v14, "  /data/system/usb_device_manager.xml"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    const/4 v11, 0x0

    .line 1028
    .local v11, stream:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 1030
    .local v10, record:Ljava/lang/String;
    :try_start_2
    new-instance v12, Ljava/io/FileInputStream;

    sget-object v14, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1031
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v12, stream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1032
    .local v2, bis:Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1034
    .local v5, dis:Ljava/io/DataInputStream;
    :goto_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1035
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_6

    .line 1037
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #dis:Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    move-object v11, v12

    .line 1038
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/FileNotFoundException;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_7
    :try_start_4
    const-string v14, "    settings file not found"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1041
    if-eqz v11, :cond_6

    .line 1043
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1048
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_8
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1049
    return-void

    .line 1041
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :cond_7
    if-eqz v12, :cond_8

    .line 1043
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_8
    :goto_9
    move-object v11, v12

    .line 1047
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 1041
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #dis:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v14

    :goto_a
    if-eqz v11, :cond_9

    .line 1043
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1041
    :cond_9
    :goto_b
    :try_start_9
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1044
    :catch_1
    move-exception v16

    goto :goto_b

    :catch_2
    move-exception v14

    goto :goto_8

    .line 1039
    :catch_3
    move-exception v14

    .line 1041
    :goto_c
    if-eqz v11, :cond_6

    .line 1043
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 1044
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v14

    goto :goto_9

    .line 1041
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #dis:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v14

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 1039
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v14

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto :goto_c

    .line 1037
    :catch_6
    move-exception v6

    goto :goto_7
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .parameter "accessory"
    .parameter "uid"

    .prologue
    .line 939
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 941
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 942
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 943
    .restart local v0       #uidList:Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 946
    monitor-exit v2

    .line 947
    return-void

    .line 946
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "uid"

    .prologue
    .line 927
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 928
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, deviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 930
    .local v1, uidList:Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_0

    .line 931
    new-instance v1, Landroid/util/SparseBooleanArray;

    .end local v1           #uidList:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 932
    .restart local v1       #uidList:Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 935
    monitor-exit v3

    .line 936
    return-void

    .line 935
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 950
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    .line 953
    :goto_0
    return v0

    .line 952
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 953
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .parameter "accessory"

    .prologue
    .line 800
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 802
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 803
    const/4 v1, 0x0

    monitor-exit v2

    .line 805
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 806
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 790
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 792
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 793
    const/4 v1, 0x0

    monitor-exit v2

    .line 795
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 796
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "accessory"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 872
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 875
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 877
    const-string v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbSettingsManager"

    const-string v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 886
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 887
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "device"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 852
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 855
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 857
    const-string v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 859
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbSettingsManager"

    const-string v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 868
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .locals 6
    .parameter "accessory"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 909
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 910
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v0, 0x0

    .line 911
    .local v0, changed:Z
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 912
    if-nez p2, :cond_3

    .line 913
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    move v0, v2

    .line 920
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 921
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 923
    :cond_1
    monitor-exit v4

    .line 924
    return-void

    :cond_2
    move v0, v3

    .line 913
    goto :goto_0

    .line 915
    :cond_3
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v2

    .line 916
    :goto_1
    if-eqz v0, :cond_0

    .line 917
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    move v0, v3

    .line 915
    goto :goto_1
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 6
    .parameter "device"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 891
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 892
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v0, 0x0

    .line 893
    .local v0, changed:Z
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 894
    if-nez p2, :cond_3

    .line 895
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    move v0, v2

    .line 902
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 903
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 905
    :cond_1
    monitor-exit v4

    .line 906
    return-void

    :cond_2
    move v0, v3

    .line 895
    goto :goto_0

    .line 897
    :cond_3
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v2

    .line 898
    :goto_1
    if-eqz v0, :cond_0

    .line 899
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 905
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    move v0, v3

    .line 897
    goto :goto_1
.end method
