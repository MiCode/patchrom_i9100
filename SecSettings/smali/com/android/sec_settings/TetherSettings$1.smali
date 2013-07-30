.class Lcom/android/sec_settings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/sec_settings/TetherSettings$1;->this$0:Lcom/android/sec_settings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/sec_settings/TetherSettings$1;->this$0:Lcom/android/sec_settings/TetherSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/sec_settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/sec_settings/TetherSettings;->access$002(Lcom/android/sec_settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 305
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/sec_settings/TetherSettings$1;->this$0:Lcom/android/sec_settings/TetherSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/sec_settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/sec_settings/TetherSettings;->access$002(Lcom/android/sec_settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 308
    return-void
.end method
