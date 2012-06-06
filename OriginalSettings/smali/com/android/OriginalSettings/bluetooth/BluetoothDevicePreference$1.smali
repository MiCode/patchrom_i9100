.class Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 226
    return-void
.end method
