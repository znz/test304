# README

- Ruby version : 2.2.4

- System dependencies : phantomjs 2.0.0-2.1.1

- Configuration : none

- Database creation : no

- Database initialization : no

- How to run the test suite
  - `bundle install`
  - `rake spec` or `rspec`

## Result with phantomjs 2.0.0-2.1.1

```
$ rspec -fd

HomeController
  GET #index
    returns http success
  GET #redirect
    returns http success

Home pages
  redirect (0)
  redirect (1) (FAILED - 1)

Failures:

  1) Home pages redirect (1)
     Failure/Error: expect(page.status_code).to eq(200)

       expected: 200
            got: 304

       (compared using ==)
     # ./spec/features/home_spec.rb:8:in `block (3 levels) in <top (required)>'

Finished in 1.12 seconds (files took 1.72 seconds to load)
4 examples, 1 failure

Failed examples:

rspec './spec/features/home_spec.rb[1:2]' # Home pages redirect (1)
```

## Expected result with phantomjs 1.9.8

```
$ rspec -fd

HomeController
  GET #index
    returns http success
  GET #redirect
    returns http success

Home pages
  redirect (0)
  redirect (1)

Finished in 3.85 seconds (files took 1.73 seconds to load)
4 examples, 0 failures
```
