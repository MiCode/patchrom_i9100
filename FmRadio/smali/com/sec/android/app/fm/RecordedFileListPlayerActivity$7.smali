.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$7;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$7;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 9
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 460
    const-string v3, "RecordedFileListPlayerActivity"

    const-string v4, "RecordButton is hovered."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 463
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 465
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$7;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 466
    .local v1, scale:F
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 469
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 470
    invoke-virtual {v2, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 471
    const v3, -0x10102

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    const/4 v3, 0x2

    const/high16 v4, 0x4150

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {p2, v2}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 475
    return v6
.end method
