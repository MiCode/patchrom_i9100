.class Lcom/sec/android/app/callsetting/CallSetting$1;
.super Ljava/lang/Object;
.source "CallSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/CallSetting;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/CallSetting;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/CallSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/callsetting/CallSetting$1;->this$0:Lcom/sec/android/app/callsetting/CallSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 81
    return-void
.end method
