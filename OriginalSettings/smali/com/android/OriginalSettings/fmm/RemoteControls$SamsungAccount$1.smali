.class Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount$1;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount$1;->this$0:Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount$1;->this$0:Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;

    #getter for: Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;->returnvalue_sa:I
    invoke-static {v1}, Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;->access$000(Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;)I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount$1;->this$0:Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;->startActivity(Landroid/content/Intent;)V

    .line 182
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
