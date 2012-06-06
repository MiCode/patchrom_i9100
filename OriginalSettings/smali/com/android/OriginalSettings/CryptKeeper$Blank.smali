.class public Lcom/android/OriginalSettings/CryptKeeper$Blank;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper$Blank;->setContentView(I)V

    .line 122
    return-void
.end method
