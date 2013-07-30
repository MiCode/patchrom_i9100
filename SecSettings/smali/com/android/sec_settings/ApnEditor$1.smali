.class Lcom/android/sec_settings/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/sec_settings/ApnEditor$1;->this$0:Lcom/android/sec_settings/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/sec_settings/ApnEditor$1;->this$0:Lcom/android/sec_settings/ApnEditor;

    invoke-virtual {v0}, Lcom/android/sec_settings/ApnEditor;->finish()V

    .line 858
    return-void
.end method
