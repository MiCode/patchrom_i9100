.class Lcom/sec/android/app/fm/MainActivity$38;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 6849
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$38;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "popupMenu"

    .prologue
    .line 6854
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$38;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Popup menu dismiss"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6855
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$38;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setIsShowCustomOptionMenu(Z)V

    .line 6856
    return-void
.end method
