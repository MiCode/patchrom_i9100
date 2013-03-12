.class Lcom/android/internal/policy/impl/PhoneWindowManager$12;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$behavior:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->val$behavior:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1791
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->val$behavior:I

    packed-switch v0, :pswitch_data_0

    .line 1821
    :goto_0
    :pswitch_0
    return-void

    .line 1794
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    goto :goto_0

    .line 1797
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismissAndSwitch()V

    goto :goto_0

    .line 1804
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->val$behavior:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1806
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    goto :goto_0

    .line 1810
    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    goto :goto_0

    .line 1811
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1791
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1804
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
