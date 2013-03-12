.class Lcom/android/server/sec/ClippedDataPickerDialog$2;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$2;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$2;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 421
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 425
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$2;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 429
    return-void
.end method
