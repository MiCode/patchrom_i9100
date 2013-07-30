.class public Lcom/android/sec_settings/OneHandHelp;
.super Landroid/app/Activity;
.source "OneHandHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "OneHandHelp"

    const-string v1, "OneHandHelp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/OneHandHelp;->setContentView(I)V

    .line 34
    return-void
.end method
