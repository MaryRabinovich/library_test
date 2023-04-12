<?php declare(strict_types=1);

namespace Tests;

use PHPUnit\Framework\TestCase;

require_once __DIR__.'/../vendor/autoload.php';

final class StackTest extends TestCase
{
    /**
     * Copy-paste from phpunit docs
     */
    public function testPushAndPop(): void
    {
        $stack = [];
        $this->assertSame(0, count($stack));

        array_push($stack, 'foo');
        $this->assertSame('foo', $stack[count($stack)-1]);
        $this->assertSame(1, count($stack));

        $this->assertSame('foo', array_pop($stack));
        $this->assertSame(0, count($stack));
    }

    /**
     * Trying to reach http in nginx-container from test-container
     *
     * @return void
     */
    public function testHttp(): void
    {
        $client = new \GuzzleHttp\Client();
        $response = $client->get('http://localhost:8000');

        // does not work, needs a network

        // $this->assertNotNull($response);
    }
}