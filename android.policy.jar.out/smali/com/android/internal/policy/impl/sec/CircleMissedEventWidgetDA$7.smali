.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;
.super Ljava/lang/Object;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 459
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$10;->$SwitchMap$com$android$internal$policy$impl$sec$CircleMissedEventWidgetDA$UnlockMode:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    #calls: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    #calls: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedVvm:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    #calls: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 475
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
