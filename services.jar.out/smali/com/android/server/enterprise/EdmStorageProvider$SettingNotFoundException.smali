.class Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
.super Landroid/util/AndroidException;
.source "EdmStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EdmStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingNotFoundException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method
