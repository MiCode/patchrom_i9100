.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;
.super Ljava/lang/Object;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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
    .line 411
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsHoveringUIEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 417
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 420
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 423
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
