.class Lcom/android/OriginalSettings/ProxySelector$4;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ProxySelector;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/OriginalSettings/ProxySelector$4;->this$0:Lcom/android/OriginalSettings/ProxySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 296
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 297
    check-cast v0, Landroid/widget/TextView;

    .line 298
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 300
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
