.class Lcom/sec/android/app/fm/MainActivity$37;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V
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
    .line 6833
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 6838
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$37$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/fm/MainActivity$37$1;-><init>(Lcom/sec/android/app/fm/MainActivity$37;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 6846
    const/4 v0, 0x1

    return v0
.end method
