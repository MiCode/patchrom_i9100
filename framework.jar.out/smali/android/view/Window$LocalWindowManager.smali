.class Landroid/view/Window$LocalWindowManager;
.super Landroid/view/WindowManagerImpl$CompatModeWrapper;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalWindowManager"
.end annotation


# static fields
.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final PROPERTY_HARDWARE_UI_DBG:Ljava/lang/String; = "debug.hwui.enable"


# instance fields
.field private final mHardwareAccelerated:Z

.field final synthetic this$0:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/WindowManager;Z)V
    .locals 3
    .parameter
    .parameter "wm"
    .parameter "hardwareAccelerated"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 496
    iput-object p1, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    .line 497
    #getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/Window;->getCompatInfo(Landroid/content/Context;)Landroid/view/CompatibilityInfoHolder;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 498
    if-eqz p3, :cond_0

    const-string v2, "debug.hwui.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "persist.sys.ui.hw"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    .line 501
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .parameter "view"
    .parameter "params"

    .prologue
    const/16 v6, 0x3e8

    .line 509
    move-object v3, p2

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 510
    .local v3, wp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 511
    .local v0, curTitle:Ljava/lang/CharSequence;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v6, :cond_b

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v4, v5, :cond_b

    .line 513
    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v4, :cond_0

    .line 514
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 515
    .local v1, decor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 519
    .end local v1           #decor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 521
    :cond_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_6

    .line 522
    const-string v2, "Media"

    .line 534
    .local v2, title:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v4}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 548
    .end local v2           #title:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 549
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 551
    :cond_4
    iget-boolean v4, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    if-eqz v4, :cond_5

    .line 552
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 554
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/WindowManagerImpl$CompatModeWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    return-void

    .line 523
    :cond_6
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ec

    if-ne v4, v5, :cond_7

    .line 524
    const-string v2, "MediaOvr"

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 525
    .end local v2           #title:Ljava/lang/String;
    :cond_7
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v6, :cond_8

    .line 526
    const-string v2, "Panel"

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v2           #title:Ljava/lang/String;
    :cond_8
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_9

    .line 528
    const-string v2, "SubPanel"

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v2           #title:Ljava/lang/String;
    :cond_9
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3eb

    if-ne v4, v5, :cond_a

    .line 530
    const-string v2, "AtchDlg"

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v2           #title:Ljava/lang/String;
    :cond_a
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v2           #title:Ljava/lang/String;
    :cond_b
    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v4, :cond_c

    .line 541
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v4}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_e

    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v4

    :goto_2
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 543
    :cond_c
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_d
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v4}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 545
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v4}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 541
    :cond_e
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v4}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v4

    #getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_2
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    return v0
.end method
