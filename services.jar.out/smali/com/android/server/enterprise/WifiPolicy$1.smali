.class Lcom/android/server/enterprise/WifiPolicy$1;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/WifiPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 115
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forget operation failed reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "WifiPolicyService"

    const-string v1, "forget operation succeeded "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
