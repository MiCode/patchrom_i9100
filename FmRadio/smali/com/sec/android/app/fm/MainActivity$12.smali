.class Lcom/sec/android/app/fm/MainActivity$12;
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
    .line 2815
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 10
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const v9, 0x7f0a008c

    const v8, 0x7f0a008b

    const v7, 0x7f0a0086

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2820
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2821
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2822
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2823
    invoke-virtual {p2, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 2825
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2826
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$12;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2827
    invoke-virtual {p2, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 2829
    :cond_1
    return v5
.end method
