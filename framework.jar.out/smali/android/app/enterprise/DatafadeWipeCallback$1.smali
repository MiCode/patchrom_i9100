.class Landroid/app/enterprise/DatafadeWipeCallback$1;
.super Landroid/app/enterprise/IDatafadeWipeCallback$Stub;
.source "DatafadeWipeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/DatafadeWipeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/enterprise/DatafadeWipeCallback;


# direct methods
.method constructor <init>(Landroid/app/enterprise/DatafadeWipeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Landroid/app/enterprise/DatafadeWipeCallback$1;->this$0:Landroid/app/enterprise/DatafadeWipeCallback;

    invoke-direct {p0}, Landroid/app/enterprise/IDatafadeWipeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIDatafadeWipeTaskStateChanged(ILjava/lang/String;I)V
    .locals 1
    .parameter "wipeTypeWeight"
    .parameter "wipeTypeMetaData"
    .parameter "currentState"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/enterprise/DatafadeWipeCallback$1;->this$0:Landroid/app/enterprise/DatafadeWipeCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/enterprise/DatafadeWipeCallback;->onDatafadeWipeTaskStateChanged(ILjava/lang/String;I)V

    .line 97
    return-void
.end method
