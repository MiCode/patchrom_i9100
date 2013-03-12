.class Lcom/android/server/sec/ClippedDataPickerGridView$2;
.super Ljava/lang/Object;
.source "ClippedDataPickerGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerGridView;->getAnim(III)Landroid/view/animation/TranslateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerGridView;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView$2;->this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView$2;->this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->access$002(Lcom/android/server/sec/ClippedDataPickerGridView;Z)Z

    .line 126
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 114
    return-void
.end method
