.class Lcom/android/OriginalSettings/ProxySelector$3;
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
    .line 287
    iput-object p1, p0, Lcom/android/OriginalSettings/ProxySelector$3;->this$0:Lcom/android/OriginalSettings/ProxySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/OriginalSettings/ProxySelector$3;->this$0:Lcom/android/OriginalSettings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProxySelector;->populateFields()V

    .line 291
    return-void
.end method
