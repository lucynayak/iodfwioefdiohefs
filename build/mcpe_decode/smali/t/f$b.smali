.class public final Lt/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Lt/m;

.field public d:Lt/y;

.field public e:Lt/f;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lt/f;Lt/y;Lt/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/f$b;->a:Landroid/view/View;

    iput-object p2, p0, Lt/f$b;->b:Ljava/lang/String;

    iput-object p5, p0, Lt/f$b;->c:Lt/m;

    iput-object p4, p0, Lt/f$b;->d:Lt/y;

    iput-object p3, p0, Lt/f$b;->e:Lt/f;

    return-void
.end method
