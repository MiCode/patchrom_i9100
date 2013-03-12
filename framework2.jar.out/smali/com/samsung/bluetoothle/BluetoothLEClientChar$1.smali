.class final Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;
.super Ljava/lang/Object;
.source "BluetoothLEClientChar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEClientChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/bluetoothle/BluetoothLEClientChar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .locals 2
    .parameter "in"

    .prologue
    .line 194
    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .locals 1
    .parameter "size"

    .prologue
    .line 198
    new-array v0, p1, [Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;->newArray(I)[Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    move-result-object v0

    return-object v0
.end method
