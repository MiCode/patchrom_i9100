.class Lcom/sec/android/app/fm/MainActivity$37$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity$37;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/MainActivity$37;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity$37;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6838
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$37$1;->this$1:Lcom/sec/android/app/fm/MainActivity$37;

    iput-object p2, p0, Lcom/sec/android/app/fm/MainActivity$37$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6842
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$37$1;->this$1:Lcom/sec/android/app/fm/MainActivity$37;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$37$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 6843
    return-void
.end method
