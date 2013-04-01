.class Lcom/sec/android/app/fm/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2797
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 3
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    .line 2802
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2803
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2804
    invoke-virtual {p2, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 2805
    const/4 v1, 0x1

    return v1
.end method
