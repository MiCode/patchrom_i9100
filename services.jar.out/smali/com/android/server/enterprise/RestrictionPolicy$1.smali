.class Lcom/android/server/enterprise/RestrictionPolicy$1;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/RestrictionPolicy;->access$002(Lcom/android/server/enterprise/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 155
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/RestrictionPolicy;->access$002(Lcom/android/server/enterprise/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 159
    return-void
.end method
