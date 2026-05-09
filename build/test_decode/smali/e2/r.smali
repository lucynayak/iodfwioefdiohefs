.class public final synthetic Le2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/d$a;


# static fields
.field public static final synthetic b:Le2/r;

.field public static final synthetic c:Le2/r;

.field public static final synthetic d:Le2/r;

.field public static final synthetic e:Le2/r;

.field public static final synthetic f:Le2/r;

.field public static final synthetic g:Le2/r;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/r;-><init>(I)V

    sput-object v0, Le2/r;->b:Le2/r;

    new-instance v0, Le2/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le2/r;-><init>(I)V

    sput-object v0, Le2/r;->c:Le2/r;

    new-instance v0, Le2/r;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le2/r;-><init>(I)V

    sput-object v0, Le2/r;->d:Le2/r;

    new-instance v0, Le2/r;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Le2/r;-><init>(I)V

    sput-object v0, Le2/r;->e:Le2/r;

    new-instance v0, Le2/r;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Le2/r;-><init>(I)V

    sput-object v0, Le2/r;->f:Le2/r;

    new-instance v0, Le2/r;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Le2/r;-><init>(I)V

    sput-object v0, Le2/r;->g:Le2/r;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le2/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    iget v0, p0, Le2/r;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Le2/v;->o:I

    double-to-float p1, p1

    const/16 p2, 0x22

    .line 1
    invoke-static {p2, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    .line 2
    :pswitch_1
    sget v0, Le2/v;->o:I

    double-to-float p1, p1

    const/16 p2, 0x20

    .line 3
    invoke-static {p2, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    .line 4
    :pswitch_2
    sget v0, Le2/s;->p:I

    double-to-float p1, p1

    sub-float/2addr p1, v1

    const/16 p2, 0x11

    .line 5
    invoke-static {p2, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    .line 6
    :pswitch_3
    sget v0, Le2/s;->p:I

    double-to-float p1, p1

    sub-float/2addr p1, v1

    const/16 p2, 0xe

    .line 7
    invoke-static {p2, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    .line 8
    :pswitch_4
    sget v0, Le2/s;->p:I

    double-to-float p1, p1

    sub-float/2addr p1, v1

    const/16 p2, 0xb

    .line 9
    invoke-static {p2, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    .line 10
    :goto_0
    sget v0, Lg2/g;->o:I

    double-to-float p1, p1

    .line 11
    sput p1, Lj2/b;->c:F

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
