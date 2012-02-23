.class public Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# instance fields
.field public final description:I

.field public final ident:I

.field public final label:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter "identIn"
    .parameter "tagIn"
    .parameter "labelIn"
    .parameter "descriptionIn"

    .prologue
    .line 272
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p1, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    .line 274
    iput-object p2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 275
    iput p3, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    .line 276
    iput p4, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    .line 277
    return-void
.end method
