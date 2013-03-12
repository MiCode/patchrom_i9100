.class Landroid/bluetooth/BluetoothSap$1;
.super Ljava/lang/Object;
.source "BluetoothSap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSap;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 338
    invoke-static {}, Landroid/bluetooth/BluetoothSap;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothSap"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothSap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothSap;->access$102(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    .line 341
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->access$200(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->access$200(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 344
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 346
    invoke-static {}, Landroid/bluetooth/BluetoothSap;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothSap"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothSap;->access$102(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    .line 348
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->access$200(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->access$200(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 351
    :cond_1
    return-void
.end method
