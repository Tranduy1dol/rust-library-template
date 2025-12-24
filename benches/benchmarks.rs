use criterion::{black_box, criterion_group, criterion_main, Criterion};

fn example_benchmark(c: &mut Criterion) {
    c.bench_function("example", |b| {
        b.iter(|| {
            // Your benchmark code here
            black_box(1 + 1)
        })
    });
}

criterion_group!(benches, example_benchmark);
criterion_main!(benches);
