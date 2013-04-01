.class Lcom/sec/android/app/fm/RssiTestActivity$5;
.super Ljava/lang/Object;
.source "RssiTestActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RssiTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RssiTestActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RssiTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/fm/RssiTestActivity$5;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$5;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #calls: Lcom/sec/android/app/fm/RssiTestActivity;->setWakeLock(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/app/fm/RssiTestActivity;->access$1100(Lcom/sec/android/app/fm/RssiTestActivity;Z)V

    .line 213
    return-void
.end method
