.class final Landroid/widget/Toast$1;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Landroid/widget/Toast$1;->val$result:Landroid/widget/Toast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$1;->val$result:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 281
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
