.class Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    iput-object p3, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/sec_settings/bluetooth/SapProfile;

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disconnectImmediate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->disconnectImmediate(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;)V

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 427
    return-void

    .line 423
    :cond_0
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disconnect of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method
