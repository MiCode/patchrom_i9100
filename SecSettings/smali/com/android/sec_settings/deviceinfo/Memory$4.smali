.class Lcom/android/sec_settings/deviceinfo/Memory$4;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/sec_settings/deviceinfo/Memory$4;->this$0:Lcom/android/sec_settings/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/sec_settings/deviceinfo/Memory$4;->this$0:Lcom/android/sec_settings/deviceinfo/Memory;

    #calls: Lcom/android/sec_settings/deviceinfo/Memory;->doUnmount()V
    invoke-static {v0}, Lcom/android/sec_settings/deviceinfo/Memory;->access$100(Lcom/android/sec_settings/deviceinfo/Memory;)V

    .line 319
    return-void
.end method
