.class Lcom/android/OriginalSettings/ProxySelector$1;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 271
    iput-object p1, p0, Lcom/android/OriginalSettings/ProxySelector$1;->this$0:Lcom/android/OriginalSettings/ProxySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/OriginalSettings/ProxySelector$1;->this$0:Lcom/android/OriginalSettings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProxySelector;->saveToDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/OriginalSettings/ProxySelector$1;->this$0:Lcom/android/OriginalSettings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 276
    :cond_0
    return-void
.end method
