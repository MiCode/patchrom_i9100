.class public Landroid/app/enterprise/DatafadeWipeCallback;
.super Ljava/lang/Object;
.source "DatafadeWipeCallback.java"


# instance fields
.field callback:Landroid/app/enterprise/IDatafadeWipeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/app/enterprise/DatafadeWipeCallback$1;

    invoke-direct {v0, p0}, Landroid/app/enterprise/DatafadeWipeCallback$1;-><init>(Landroid/app/enterprise/DatafadeWipeCallback;)V

    iput-object v0, p0, Landroid/app/enterprise/DatafadeWipeCallback;->callback:Landroid/app/enterprise/IDatafadeWipeCallback;

    .line 21
    return-void
.end method


# virtual methods
.method public onDatafadeWipeTaskStateChanged(ILjava/lang/String;I)V
    .locals 0
    .parameter "wipeTypeWeight"
    .parameter "wipeTypeMetaData"
    .parameter "currentState"

    .prologue
    .line 75
    return-void
.end method
