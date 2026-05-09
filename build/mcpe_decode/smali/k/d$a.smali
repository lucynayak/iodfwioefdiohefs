.class public final Lk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lk/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lk/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lk/d$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lk/d$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/d$a;

    invoke-direct {v0}, Lk/d$a;-><init>()V

    sput-object v0, Lk/d$a;->b:Lk/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/d$d;

    .line 1
    invoke-direct {v0}, Lk/d$d;-><init>()V

    .line 2
    iput-object v0, p0, Lk/d$a;->a:Lk/d$d;

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Lk/d$d;

    check-cast p3, Lk/d$d;

    .line 1
    iget-object v0, p0, Lk/d$a;->a:Lk/d$d;

    iget v1, p2, Lk/d$d;->a:F

    iget v2, p3, Lk/d$d;->a:F

    invoke-static {v1, v2, p1}, La3/r0;->D(FFF)F

    move-result v1

    iget v2, p2, Lk/d$d;->b:F

    iget v3, p3, Lk/d$d;->b:F

    invoke-static {v2, v3, p1}, La3/r0;->D(FFF)F

    move-result v2

    iget p2, p2, Lk/d$d;->c:F

    iget p3, p3, Lk/d$d;->c:F

    invoke-static {p2, p3, p1}, La3/r0;->D(FFF)F

    move-result p1

    .line 2
    iput v1, v0, Lk/d$d;->a:F

    iput v2, v0, Lk/d$d;->b:F

    iput p1, v0, Lk/d$d;->c:F

    .line 3
    iget-object p1, p0, Lk/d$a;->a:Lk/d$d;

    return-object p1
.end method
