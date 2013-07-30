.class Lcom/android/sec_settings/wifi/WifiSettings$19;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 2608
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    #getter for: Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WifiSettings;->access$1800(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/WifiNewDialog;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 2612
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    #getter for: Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WifiSettings;->access$2000(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    #getter for: Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WifiSettings;->access$2000(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/AccessPoint;

    move-result-object v2

    iget v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/sec_settings/wifi/WifiSettings;->manageNetwork:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/sec_settings/wifi/WifiSettings;->vzwEditFlag:Z

    if-nez v2, :cond_0

    .line 2620
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-result-object v1

    .line 2622
    .local v1, guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    if-eqz v1, :cond_0

    .line 2623
    invoke-interface {v1}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    .line 2625
    .local v0, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v0, :cond_0

    .line 2626
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2632
    .end local v0           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .end local v1           #guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings$19;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;
    invoke-static {v2, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->access$1802(Lcom/android/sec_settings/wifi/WifiSettings;Lcom/android/sec_settings/wifi/WifiNewDialog;)Lcom/android/sec_settings/wifi/WifiNewDialog;

    .line 2633
    sput-boolean v4, Lcom/android/sec_settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2634
    sput-boolean v4, Lcom/android/sec_settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 2635
    sput-boolean v4, Lcom/android/sec_settings/wifi/WifiSettings;->manageNetwork:Z

    .line 2636
    sput v4, Lcom/android/sec_settings/wifi/WifiSettings;->forget_network:I

    .line 2637
    sput v4, Lcom/android/sec_settings/wifi/WifiSettings;->cancel_network:I

    .line 2638
    sput v4, Lcom/android/sec_settings/wifi/WifiSettings;->edit_network:I

    .line 2639
    const-string v2, "WifiSettings"

    const-string v3, "vzwViewFlag sets to false : mDismissListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_1
    return-void
.end method
