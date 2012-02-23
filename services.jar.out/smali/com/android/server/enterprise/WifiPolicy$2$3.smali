.class Lcom/android/server/enterprise/WifiPolicy$2$3;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/WifiPolicy$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/WifiPolicy$2;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/WifiPolicy$2;)V
    .locals 0
    .parameter

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy$2$3;->this$1:Lcom/android/server/enterprise/WifiPolicy$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy$2$3;->this$1:Lcom/android/server/enterprise/WifiPolicy$2;

    iget-object v0, v0, Lcom/android/server/enterprise/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    #calls: Lcom/android/server/enterprise/WifiPolicy;->updateWpsBlockedNetworks()Z
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->access$300(Lcom/android/server/enterprise/WifiPolicy;)Z

    .line 2670
    return-void
.end method
