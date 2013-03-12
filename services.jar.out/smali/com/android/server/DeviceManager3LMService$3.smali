.class Lcom/android/server/DeviceManager3LMService$3;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 0
    .parameter

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/server/DeviceManager3LMService;->access$602(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 2148
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/server/DeviceManager3LMService;->access$602(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 2151
    return-void
.end method
