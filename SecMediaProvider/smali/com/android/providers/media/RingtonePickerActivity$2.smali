.class Lcom/android/providers/media/RingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/RingtonePickerActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$2;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$2;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    #getter for: Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$200(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 313
    return-void
.end method
