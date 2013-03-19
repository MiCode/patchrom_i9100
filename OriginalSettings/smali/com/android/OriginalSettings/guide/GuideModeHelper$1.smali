.class final Lcom/android/settings/guide/GuideModeHelper$1;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$v:Landroid/view/View;

    iput-object p2, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$dialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    iput-object p3, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$dialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    iget-object v2, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$activity:Landroid/app/Activity;

    #calls: Lcom/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings/guide/GuideModeHelper;->access$000(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)Z

    .line 203
    iget-object v0, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/guide/GuideModeHelper$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 206
    :cond_0
    return-void
.end method
