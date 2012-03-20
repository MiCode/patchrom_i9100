.class public final Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final USES_POLICY_MDM_APN_SETTINGS:I = 0x22

.field public static final USES_POLICY_MDM_APN_SETTINGS_TAG:Ljava/lang/String; = "android.permission.sec.MDM_APN"

.field public static final USES_POLICY_MDM_APPLICATION:I = 0x15

.field public static final USES_POLICY_MDM_APPLICATION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_APP_MGMT"

.field public static final USES_POLICY_MDM_BLUETOOTH:I = 0x16

.field public static final USES_POLICY_MDM_BLUETOOTH_TAG:Ljava/lang/String; = "android.permission.sec.MDM_BLUETOOTH"

.field public static final USES_POLICY_MDM_BROWSER_SETTINGS:I = 0x24

.field public static final USES_POLICY_MDM_BROWSER_SETTINGS_TAG:Ljava/lang/String; = "android.permission.sec.MDM_BROWSER_SETTINGS"

.field public static final USES_POLICY_MDM_CALLING:I = 0x1f

.field public static final USES_POLICY_MDM_CALLING_TAG:Ljava/lang/String; = "android.permission.sec.MDM_CALLING"

.field public static final USES_POLICY_MDM_DATE_TIME:I = 0x25

.field public static final USES_POLICY_MDM_DATE_TIME_TAG:Ljava/lang/String; = "android.permission.sec.MDM_DATE_TIME"

.field public static final USES_POLICY_MDM_DEVICE_INVENTORY:I = 0x17

.field public static final USES_POLICY_MDM_DEVICE_INVENTORY_TAG:Ljava/lang/String; = "android.permission.sec.MDM_INVENTORY"

.field public static final USES_POLICY_MDM_EMAIL_ACCOUNT:I = 0x20

.field public static final USES_POLICY_MDM_EMAIL_ACCOUNT_TAG:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field public static final USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN:I = 0x28

.field public static final USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN_TAG:Ljava/lang/String; = "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

.field public static final USES_POLICY_MDM_ENTERPRISE_VPN:I = 0x26

.field public static final USES_POLICY_MDM_ENTERPRISE_VPN_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_VPN"

.field public static final USES_POLICY_MDM_EXCHANGE_ACCOUNT:I = 0x18

.field public static final USES_POLICY_MDM_EXCHANGE_ACCOUNT_TAG:Ljava/lang/String; = "android.permission.sec.MDM_EXCHANGE"

.field public static final USES_POLICY_MDM_FIREWALL:I = 0x27

.field public static final USES_POLICY_MDM_FIREWALL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_FIREWALL"

.field public static final USES_POLICY_MDM_HARDWARE_CONTROL:I = 0x1c

.field public static final USES_POLICY_MDM_HARDWARE_CONTROL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_HW_CONTROL"

.field public static final USES_POLICY_MDM_LOCATION:I = 0x1e

.field public static final USES_POLICY_MDM_LOCATION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_LOCATION"

.field public static final USES_POLICY_MDM_PHONE_RESTRICTION:I = 0x23

.field public static final USES_POLICY_MDM_PHONE_RESTRICTION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_PHONE_RESTRICTION"

.field public static final USES_POLICY_MDM_REMOTE_CONTROL:I = 0x29

.field public static final USES_POLICY_MDM_REMOTE_CONTROL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_REMOTE_CONTROL"

.field public static final USES_POLICY_MDM_RESTRICTION:I = 0x1d

.field public static final USES_POLICY_MDM_RESTRICTION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_RESTRICTION"

.field public static final USES_POLICY_MDM_ROAMING:I = 0x19

.field public static final USES_POLICY_MDM_ROAMING_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ROAMING"

.field public static final USES_POLICY_MDM_SECURITY:I = 0x1b

.field public static final USES_POLICY_MDM_SECURITY_TAG:Ljava/lang/String; = "android.permission.sec.MDM_SECURITY"

.field public static final USES_POLICY_MDM_VPN:I = 0x21

.field public static final USES_POLICY_MDM_VPN_TAG:Ljava/lang/String; = "android.permission.sec.MDM_VPN"

.field public static final USES_POLICY_MDM_WIFI:I = 0x1a

.field public static final USES_POLICY_MDM_WIFI_TAG:Ljava/lang/String; = "android.permission.sec.MDM_WIFI"

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mRequestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUsesPolicies:J

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 281
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 282
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 337
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x15

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const v6, 0x1040178

    const v7, 0x1040179

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x16

    const-string v5, "android.permission.sec.MDM_BLUETOOTH"

    const v6, 0x104017a

    const v7, 0x104017b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x17

    const-string v5, "android.permission.sec.MDM_INVENTORY"

    const v6, 0x104017c

    const v7, 0x104017d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x18

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    const v6, 0x104017e

    const v7, 0x104017f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x19

    const-string v5, "android.permission.sec.MDM_ROAMING"

    const v6, 0x1040180

    const v7, 0x1040181

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1a

    const-string v5, "android.permission.sec.MDM_WIFI"

    const v6, 0x1040182

    const v7, 0x1040183

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1b

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const v6, 0x1040184

    const v7, 0x1040185

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1c

    const-string v5, "android.permission.sec.MDM_HW_CONTROL"

    const v6, 0x1040186

    const v7, 0x1040187

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1d

    const-string v5, "android.permission.sec.MDM_RESTRICTION"

    const v6, 0x1040188

    const v7, 0x1040189

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1e

    const-string v5, "android.permission.sec.MDM_LOCATION"

    const v6, 0x104018a

    const v7, 0x104018b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1f

    const-string v5, "android.permission.sec.MDM_CALLING"

    const v6, 0x104018c

    const v7, 0x104018d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x20

    const-string v5, "android.permission.sec.MDM_EMAIL"

    const v6, 0x104018e

    const v7, 0x104018f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x21

    const-string v5, "android.permission.sec.MDM_VPN"

    const v6, 0x1040190

    const v7, 0x1040191

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x22

    const-string v5, "android.permission.sec.MDM_APN"

    const v6, 0x1040192

    const v7, 0x1040193

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x23

    const-string v5, "android.permission.sec.MDM_PHONE_RESTRICTION"

    const v6, 0x1040194

    const v7, 0x1040195

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x24

    const-string v5, "android.permission.sec.MDM_BROWSER_SETTINGS"

    const v6, 0x1040196

    const v7, 0x1040197

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x25

    const-string v5, "android.permission.sec.MDM_DATE_TIME"

    const v6, 0x1040198

    const v7, 0x1040199

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x26

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_VPN"

    const v6, 0x104019a

    const v7, 0x104019b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x27

    const-string v5, "android.permission.sec.MDM_FIREWALL"

    const v6, 0x104019c

    const v7, 0x104019d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x28

    const-string v5, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    const v6, 0x104019e

    const v7, 0x104019f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x29

    const-string v5, "android.permission.sec.MDM_REMOTE_CONTROL"

    const v6, 0x10401a0

    const v7, 0x10401a1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 449
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 450
    .local v1, pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    .end local v1           #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    :cond_0
    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 22
    .parameter "context"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/ArrayList;

    .line 492
    new-instance v17, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 494
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 495
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 497
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 499
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 501
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v17, "android.app.device_admin"

    move-object/from16 v0, v17

    invoke-virtual {v3, v10, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 503
    if-nez v9, :cond_1

    .line 504
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "No android.app.device_admin meta-data"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :catch_0
    move-exception v5

    .line 562
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create context for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v17

    if-eqz v9, :cond_0

    .line 566
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v17

    .line 509
    :cond_1
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 511
    .local v12, res:Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 515
    .local v4, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, type:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 518
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, nodeName:Ljava/lang/String;
    const-string v17, "device-admin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 520
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Meta-data does not start with device-admin tag"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 524
    :cond_4
    sget-object v17, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    move-object/from16 v0, v17

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 527
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mVisible:Z

    .line 530
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 534
    .local v8, outerDepth:I
    :cond_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v8, :cond_9

    .line 535
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 538
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 539
    .local v14, tagName:Ljava/lang/String;
    const-string/jumbo v17, "uses-policies"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 540
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 542
    .local v6, innerDepth:I
    :cond_7
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_5

    .line 544
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    .line 548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 549
    .local v11, policyName:Ljava/lang/String;
    sget-object v17, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 550
    .local v16, val:Ljava/lang/Integer;
    if-eqz v16, :cond_7

    .line 552
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    shl-long v19, v19, v21

    or-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 565
    .end local v6           #innerDepth:I
    .end local v11           #policyName:Ljava/lang/String;
    .end local v14           #tagName:Ljava/lang/String;
    .end local v16           #val:Ljava/lang/Integer;
    :cond_9
    if-eqz v9, :cond_a

    .line 566
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 569
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/ArrayList;

    .line 570
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 572
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/ArrayList;

    .line 573
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    .line 577
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 606
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1
    .parameter "policyIdent"

    .prologue
    .line 682
    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v5, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    iget-object v6, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v4

    .line 694
    .local v4, policyInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 695
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v7, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v8, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v9, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v6, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v0, v7, v8, v9, v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    .line 698
    .local v0, dpmPolicy:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v0           #dpmPolicy:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v6, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 702
    sget-object v6, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 703
    .local v3, pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    iget v6, v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 704
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 707
    .end local v3           #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    :cond_2
    return-object v5
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 632
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 633
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 634
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 635
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 637
    :cond_0
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 640
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 651
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 618
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public parseRequestedPermissions()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 780
    .local v14, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 781
    .local v13, path:Ljava/lang/String;
    const/4 v12, 0x0

    .line 782
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    .line 783
    .local v4, assmgr:Landroid/content/res/AssetManager;
    const/4 v3, 0x1

    .line 785
    .local v3, assetError:Z
    :try_start_0
    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 786
    .end local v4           #assmgr:Landroid/content/res/AssetManager;
    .local v5, assmgr:Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v5, v13}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v7

    .line 787
    .local v7, cookie:I
    if-eqz v7, :cond_0

    .line 788
    const-string v20, "AndroidManifest.xml"

    move-object/from16 v0, v20

    invoke-virtual {v5, v7, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 789
    const/4 v3, 0x0

    :cond_0
    move-object v4, v5

    .line 797
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v7           #cookie:I
    .restart local v4       #assmgr:Landroid/content/res/AssetManager;
    :goto_0
    if-eqz v3, :cond_2

    .line 798
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 799
    :cond_1
    const/16 v20, 0x0

    .line 861
    :goto_1
    return-object v20

    .line 802
    :cond_2
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 803
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v9}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 807
    :try_start_2
    new-instance v15, Landroid/content/res/Resources;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v4, v9, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 808
    .local v15, res:Landroid/content/res/Resources;
    move-object v6, v12

    .line 813
    .local v6, attrs:Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, type:I
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 817
    :cond_4
    sget-object v20, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, v20

    invoke-virtual {v15, v6, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 819
    .local v16, sa:Landroid/content/res/TypedArray;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 821
    .local v11, outerDepth:I
    :cond_5
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v11, :cond_8

    .line 822
    :cond_6
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 826
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 827
    .local v17, tagName:Ljava/lang/String;
    if-eqz v17, :cond_5

    const-string/jumbo v20, "uses-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 828
    sget-object v20, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, v20

    invoke-virtual {v15, v6, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 833
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 836
    .local v10, name:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 838
    sget-object v20, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 839
    .local v19, val:Ljava/lang/Integer;
    if-eqz v19, :cond_7

    .line 840
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v24

    shl-long v22, v22, v24

    or-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    .line 842
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_7
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 856
    .end local v6           #attrs:Landroid/util/AttributeSet;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #outerDepth:I
    .end local v15           #res:Landroid/content/res/Resources;
    .end local v16           #sa:Landroid/content/res/TypedArray;
    .end local v17           #tagName:Ljava/lang/String;
    .end local v18           #type:I
    .end local v19           #val:Ljava/lang/Integer;
    :catch_0
    move-exception v8

    .line 857
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    .end local v8           #e:Ljava/lang/Exception;
    :cond_8
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 860
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    goto/16 :goto_1

    .line 793
    .end local v9           #metrics:Landroid/util/DisplayMetrics;
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .end local v4           #assmgr:Landroid/content/res/AssetManager;
    .restart local v5       #assmgr:Landroid/content/res/AssetManager;
    :catch_2
    move-exception v20

    move-object v4, v5

    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .restart local v4       #assmgr:Landroid/content/res/AssetManager;
    goto/16 :goto_0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 729
    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    .line 730
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .locals 5
    .parameter "policyIdent"

    .prologue
    const/4 v0, 0x1

    .line 669
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 714
    const/4 v0, 0x0

    const-string v1, "flags"

    iget-wide v2, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 751
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 753
    iget-wide v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    return-void
.end method
