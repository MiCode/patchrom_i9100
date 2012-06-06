.class final Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$AudioAGFilter;
.super Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAGFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 3
    .parameter "uuids"
    .parameter "btClass"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_1

    .line 179
    sget-object v2, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    if-eqz p2, :cond_2

    .line 183
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 187
    goto :goto_0
.end method
