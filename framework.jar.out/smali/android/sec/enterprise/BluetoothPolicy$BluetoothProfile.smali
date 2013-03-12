.class public Landroid/sec/enterprise/BluetoothPolicy$BluetoothProfile;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothProfile"
.end annotation


# static fields
.field public static final BLUETOOTH_A2DP_PROFILE:I = 0x8

.field public static final BLUETOOTH_AVRCP_PROFILE:I = 0x10

.field public static final BLUETOOTH_BPP_PROFILE:I = 0x200

.field public static final BLUETOOTH_DUN_PROFILE:I = 0x20

.field public static final BLUETOOTH_FTP_PROFILE:I = 0x40

.field public static final BLUETOOTH_HFP_PROFILE:I = 0x2

.field public static final BLUETOOTH_HSP_PROFILE:I = 0x1

.field public static final BLUETOOTH_PBAP_PROFILE:I = 0x4

.field public static final BLUETOOTH_SAP_PROFILE:I = 0x100

.field public static final BLUETOOTH_SPP_PROFILE:I = 0x80


# instance fields
.field final synthetic this$0:Landroid/sec/enterprise/BluetoothPolicy;


# direct methods
.method public constructor <init>(Landroid/sec/enterprise/BluetoothPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Landroid/sec/enterprise/BluetoothPolicy$BluetoothProfile;->this$0:Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
